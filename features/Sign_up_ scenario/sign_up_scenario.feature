Feature: Sign up testcase
    This is sign up testcase

    Scenario: Go to Sign up page
        Given Go to start page for sign up
        When Start page is loading
        Then Click to button "Don't have an account?"
        When Sign up page is loading
        Then Fill in the input fields
        When Input fields if fill
        Then Click to button "Sign up"