//
//  ContentView.swift
//  FloatingTextfieldDemo
//
//  Created by Larry Burris on 4/13/25.
//
import FloatingPromptTextField
import SwiftUI

struct ContentView: View
{
    @Environment(\.colorScheme) var colorScheme
    
    @State var title: String = ""
    @State var description: String = ""
    @State var comment: String = ""

    var body: some View
    {
        VStack(spacing: 20)
        {
            FloatingPromptTextField(text: $title, prompt: Text("Title:")
                .foregroundStyle(colorScheme == .dark ? .gray : .blue))
            .floatingPromptScale(1.0)
            
            FloatingPromptTextField(text: $description, prompt: Text("Description:")
                .foregroundStyle(colorScheme == .dark ? .gray : .blue))
            .floatingPromptScale(1.0)
            
            FloatingPromptTextField(text: $comment, prompt: Text("Comment:")
                .foregroundStyle(colorScheme == .dark ? .gray : .blue))
            .floatingPromptScale(1.0)
        }
        .padding()
    }
}

#Preview
{
    ContentView()
}
