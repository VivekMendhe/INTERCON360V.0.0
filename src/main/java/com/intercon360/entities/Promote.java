package com.intercon360.entities;

import java.sql.Date;

public class Promote 
{
	private String  type;
	private String  campaign_name;
	private String  status;
	private Date start_date;
	private Date end_date;
	private String  expected_revenue;
	private String  budgeted_cost;
	private String  actual_cost;
	private String  expected_response;
	private String  description;
	public Promote() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Promote(String type, String campaign_name, String status, Date start_date, Date end_date,
			String expected_revenue, String budgeted_cost, String actual_cost, String expected_response,
			String description) {
		super();
		this.type = type;
		this.campaign_name = campaign_name;
		this.status = status;
		this.start_date = start_date;
		this.end_date = end_date;
		this.expected_revenue = expected_revenue;
		this.budgeted_cost = budgeted_cost;
		this.actual_cost = actual_cost;
		this.expected_response = expected_response;
		this.description = description;
	}
	
	
	public Promote(String type, String campaign_name, String status, String expected_revenue, String budgeted_cost,
			String actual_cost, String expected_response, String description) {
		super();
		this.type = type;
		this.campaign_name = campaign_name;
		this.status = status;
		this.expected_revenue = expected_revenue;
		this.budgeted_cost = budgeted_cost;
		this.actual_cost = actual_cost;
		this.expected_response = expected_response;
		this.description = description;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCampaign_name() {
		return campaign_name;
	}
	public void setCampaign_name(String campaign_name) {
		this.campaign_name = campaign_name;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public String getExpected_revenue() {
		return expected_revenue;
	}
	public void setExpected_revenue(String expected_revenue) {
		this.expected_revenue = expected_revenue;
	}
	public String getBudgeted_cost() {
		return budgeted_cost;
	}
	public void setBudgeted_cost(String budgeted_cost) {
		this.budgeted_cost = budgeted_cost;
	}
	public String getActual_cost() {
		return actual_cost;
	}
	public void setActual_cost(String actual_cost) {
		this.actual_cost = actual_cost;
	}
	public String getExpected_response() {
		return expected_response;
	}
	public void setExpected_response(String expected_response) {
		this.expected_response = expected_response;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}	
}
