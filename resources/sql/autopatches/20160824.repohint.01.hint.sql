CREATE TABLE {$NAMESPACE}_repository.repository_commithint (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  repositoryPHID VARBINARY(64) NOT NULL,
  oldCommitIdentifier VARCHAR(40) NOT NULL COLLATE {$COLLATE_TEXT},
  newCommitIdentifier VARCHAR(40) COLLATE {$COLLATE_TEXT},
  hintType VARCHAR(32) NOT NULL COLLATE {$COLLATE_TEXT},
  UNIQUE KEY `key_old` (repositoryPHID, oldCommitIdentifier)
) ENGINE=InnoDB, COLLATE {$COLLATE_TEXT};
