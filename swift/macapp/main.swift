//
//  main.swift
//  macapp
//
//  Created by v on 2020/11/17.
//

import Cocoa

fileprivate let appDelegate = AppDelegate()
NSApplication.shared.delegate = appDelegate

fileprivate let argc = CommandLine.argc
fileprivate let argv = CommandLine.unsafeArgv

_ = NSApplicationMain(argc, argv)
