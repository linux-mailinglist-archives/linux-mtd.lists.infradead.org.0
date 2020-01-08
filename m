Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D27134FFB
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 00:24:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uWaiIVOLwa0j58RCRCKzRa9MHKXUq8JK514HyGOeZ+g=; b=Rad/U1LFDgQ9UX
	iwaLz7py45Z7XbPLNfZCwBFYgutVTcLjogMlnWD9xbjhl4p0JVLUqsN7pQmbsyW9QCtKDTPKDD0pW
	iSlDkh9ptWTU+ER2VNM70KMTtZBdZcd3aLWpO0ekLScnJT2wLdK2lFaheQR45q5RPMHjKhM1ZY9q/
	KaKWaM7QcjBRn+xddM0W19RNOPjJ17j9rSwmP0YFd1fxAg0RjxFYxCDIkW4+DSVxuLFsJhXdWQBGs
	8ZIQoXvkhm1bomqNZSOAZnddS3NdwAZKTO2h44+P7CGeOx/9I8dgACuCiuARtBC6cFUHCdhEGRNn9
	dw0LWUsxL+c4EQfhNfbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipKgb-0005nR-IF; Wed, 08 Jan 2020 23:24:25 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipKgU-0005mq-TQ
 for linux-mtd@lists.infradead.org; Wed, 08 Jan 2020 23:24:21 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id EF2A523D09;
 Thu,  9 Jan 2020 00:24:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1578525850;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=g/FY8GZCPjERjMMlYTQ+Rg/b1/hidQXhPXGYsOQUAL8=;
 b=oa6jOc88Wd34O+B9/2IzjZ17YVK73pBXPqCD2QNbuyxAP6QTa+jJbtWYD88mM2qI4nZVKp
 iednltBeirly4G8fkSnijLD5hvOJ6YFYGrQ7Gm9C9gpernWIG7o9gDD/uW/yxBKsxqQt0w
 JydqzrsZU3kLZrJMcOGN2DzVGUB/zDA=
From: Michael Walle <michael@walle.cc>
To: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Subject: [PATCH] mtd-utils: add optional offset parameter to flash_otp_dump
Date: Thu,  9 Jan 2020 00:23:59 +0100
Message-Id: <20200108232359.27372-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spamd-Bar: ++++
X-Spam-Level: ****
X-Rspamd-Server: web
X-Spam-Status: No, score=4.90
X-Spam-Score: 4.90
X-Rspamd-Queue-Id: EF2A523D09
X-Spamd-Result: default: False [4.90 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; RCPT_COUNT_THREE(0.00)[3];
 R_MISSING_CHARSET(2.50)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 TO_DN_SOME(0.00)[]; DKIM_SIGNED(0.00)[];
 MID_CONTAINS_FROM(1.00)[]; NEURAL_HAM(-0.00)[-0.694];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_152419_931313_395B23D1 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Michael Walle <michael@walle.cc>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

There are flashes which have gaps between OTP regions and flashes where
the regions don't start at 0 (for example the Winbond 25Q series, which
has three 256 bytes OTP regions starting at 0x1000, 0x2000 and 0x3000).
At the moment it is impossible to dump the OTP memory. Fix it by passing
an optional offset parameter.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 misc-utils/flash_otp_dump.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/misc-utils/flash_otp_dump.c b/misc-utils/flash_otp_dump.c
index f0c0fb9..f1e1782 100644
--- a/misc-utils/flash_otp_dump.c
+++ b/misc-utils/flash_otp_dump.c
@@ -10,16 +10,18 @@
 #include <string.h>
 #include <errno.h>
 #include <sys/ioctl.h>
+#include <stdlib.h>
 
 #include <mtd/mtd-user.h>
 
 int main(int argc,char *argv[])
 {
-	int fd, val, i, offset, ret;
+	int fd, val, i, ret;
+	int offset = 0;
 	unsigned char buf[16];
 
-	if (argc != 3 || (strcmp(argv[1], "-f") && strcmp(argv[1], "-u"))) {
-		fprintf(stderr,"Usage: %s [ -f | -u ] <device>\n", PROGRAM_NAME);
+	if (argc <= 3 || (strcmp(argv[1], "-f") && strcmp(argv[1], "-u"))) {
+		fprintf(stderr,"Usage: %s [ -f | -u ] <device> [<offset>]\n", PROGRAM_NAME);
 		return EINVAL;
 	}
 
@@ -36,9 +38,22 @@ int main(int argc,char *argv[])
 		return errno;
 	}
 
+	if (argc >= 4) {
+		char *p;
+		offset = (off_t)strtoull(argv[3], &p, 0);
+		if (argv[3][0] == 0 || *p != 0) {
+			fprintf(stderr, "%s: bad offset value\n", PROGRAM_NAME);
+			return ERANGE;
+		}
+	}
+
+	if (lseek(fd, offset, SEEK_SET) == (off_t)-1) {
+		perror("lseek()");
+		return errno;
+	}
+
 	printf("OTP %s data for %s\n",
 			argv[1][1] == 'f' ? "factory" : "user", argv[2]);
-	offset = 0;
 	while ((ret = read(fd, buf, sizeof(buf)))) {
 		if (ret < 0) {
 			perror("read()");
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
