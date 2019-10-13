package com.venky.document.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.venky.document.entities.Document;

public interface DocumentRepository extends JpaRepository<Document, Long>{

}

