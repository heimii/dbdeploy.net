CREATE TABLE IF NOT EXISTS `$(QualifiedTableName)` (
	ChangeId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Folder VARCHAR(256) NOT NULL,
	ScriptNumber BIGINT NOT NULL,
	ScriptName VARCHAR(512) NOT NULL,
	StartDate DATETIME NOT NULL,
	CompleteDate DATETIME NULL,
	AppliedBy VARCHAR(128) NOT NULL,
	ScriptStatus TINYINT NOT NULL,
	ScriptOutput TEXT NOT NULL
);

ALTER TABLE `$(QualifiedTableName)` ADD UNIQUE INDEX(Folder, ScriptNumber);