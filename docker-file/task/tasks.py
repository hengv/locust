#!/usr/bin/env python

from locust import HttpUser, task, between

class QuickstartUser(HttpUser):
    wait_time = between(1, 2)

    def on_start(self):
        pass

    @task
    def index_page(self):
        self.client.get("/")
