﻿/*
 PureMVC AS2 Port originally by Pedr Browne 
 PureMVC - Copyright(c) 2006, 2007 Futurescale, Inc., Some rights reserved.
 Your reuse is governed by the Creative Commons Attribution 3.0 United States License
*/
import org.puremvc.as2.interfaces.*;

interface org.puremvc.as2.interfaces.IView 
{
	
	/**
	 * The interface definition for a PureMVC View.
	 * 
	 * <P>
	 * In PureMVC, <code>IView</code> implementors assume these responsibilities:</P>
	 * 
	 * <P>
	 * In PureMVC, the <code>View</code> class assumes these responsibilities:
	 * <UL>
	 * <LI>Maintain a cache of <code>IMediator</code> instances.</LI>
	 * <LI>Provide methods for registering, retrieving, and removing <code>IMediators</code>.</LI>
	 * <LI>Managing the observer lists for each <code>INotification</code> in the application.</LI>
	 * <LI>Providing a method for attaching <code>IObservers</code> to an <code>INotification</code>'s observer list.</LI>
	 * <LI>Providing a method for broadcasting an <code>INotification</code>.</LI>
	 * <LI>Notifying the <code>IObservers</code> of a given <code>INotification</code> when it broadcast.</LI>
	 * </UL>
	 * 
	 * @see org.puremvc.as2.interfaces.IMediator IMediator
	 * @see org.puremvc.as2.interfaces.IObserver IObserver
	 * @see org.puremvc.as2.interfaces.INotification INotification
	 */
	
		/**
		 * Register an <code>IObserver</code> to be notified
		 * of <code>INotifications</code> with a given name.
		 * 
		 * @param notificationName the name of the <code>INotifications</code> to notify this <code>IObserver</code> of
		 * @param observer the <code>IObserver</code> to register
		 */
		function registerObserver( noteName:String, observer:IObserver ) : Void;

		/**
		 * Notify the <code>IObservers</code> for a particular <code>INotification</code>.
		 * 
		 * <P>
		 * All previously attached <code>IObservers</code> for this <code>INotification</code>'s
		 * list are notified and are passed a reference to the <code>INotification</code> in 
		 * the order in which they were registered.</P>
		 * 
		 * @param notification the <code>INotification</code> to notify <code>IObservers</code> of.
		 */
		function notifyObservers( note:INotification ) : Void;
		
		/**
		 * Register an <code>IMediator</code> instance with the <code>View</code>.
		 * 
		 * <P>
		 * Registers the <code>IMediator</code> so that it can be retrieved by name,
		 * and further interrogates the <code>IMediator</code> for its 
		 * <code>INotification</code> interests.</P>
		 * <P>
		 * If the <code>IMediator</code> returns any <code>INotification</code> 
		 * names to be notified about, an <code>Observer</code> is created encapsulating 
		 * the <code>IMediator</code> instance's <code>handleNotification</code> method 
		 * and registering it as an <code>Observer</code> for all <code>INotifications</code> the 
		 * <code>IMediator</code> is interested in.</p>
		 * 
		 * @param mediatorName the name to associate with this <code>IMediator</code> instance
		 * @param mediator a reference to the <code>IMediator</code> instance
		 */
		function registerMediator( mediator:IMediator ) : Void;

		/**
		 * Retrieve an <code>IMediator</code> from the <code>View</code>.
		 * 
		 * @param mediatorName the name of the <code>IMediator</code> instance to retrieve.
		 * @return the <code>IMediator</code> instance previously registered with the given <code>mediatorName</code>.
		 */
		function retrieveMediator( mediatorName:String ) : IMediator;

		/**
		 * Remove an <code>IMediator</code> from the <code>View</code>.
		 * 
		 * @param mediatorName name of the <code>IMediator</code> instance to be removed.
		 */
		function removeMediator( mediatorName:String ) : Void;
		
	
}