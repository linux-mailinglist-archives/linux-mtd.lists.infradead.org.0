Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812E2DE7FA
	for <lists+linux-mtd@lfdr.de>; Mon, 21 Oct 2019 11:22:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sxW81Qr18cOjUIsU+D0Gs4zo7Nj5/fv8GF27XxDgQNI=; b=TneMU1wuIX2SWo
	VxAlCa+nt8wYV4D22LviWYx6IHevk0joctbaG6gbRkkTPvC14Ii27JvGdNpxqDI0JLHMpbP9sscdw
	Z8Mvc/wSi1UbqEVvEF4gmebTA1vtiWauH6U7XSrZvN09s1EIpEPvda4sB0CXpY7rR8+2IxZege7Sh
	kE+gjO//OwZwL3WXzpNecIROixm3fpCYmoMmNU+yfDBW/aYLTOhCXTkmJqb6LZh0YMdjqUIx2JLur
	zTWfePLWItraievZEPf+RrTSGuAcyg2exlqbxL0Ku/l9VuXotIHUiVC4A9Asd4IzUszEcMXR6HFJb
	BzlSBupdwDAE1azAyjpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTtb-00089r-MJ; Mon, 21 Oct 2019 09:22:35 +0000
Received: from mta4.mail.slb.com ([192.23.68.89])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTtH-00081D-Es
 for linux-mtd@lists.infradead.org; Mon, 21 Oct 2019 09:22:18 +0000
Received: from pps.filterd (us1190pfpoint09.mail.slb.com [127.0.0.1])
 by us1190pfpoint09.mail.slb.com (8.16.0.27/8.16.0.27) with SMTP id
 x9L9IeYl037505; Mon, 21 Oct 2019 09:22:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=slb.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding;
 s=20180320pps; bh=bcI0anUSAoY/aTZ062vOe3L+MNtiNCAKwa5chdj2jnA=;
 b=jnELevEDwaZx1BsyAR9FG2cOMT0cG4J4ZC/zlOXFpqO+I1pjplb1yson23qRCz3FqQG5
 KFpzmy6T+F7Lfgz2x5W8MYgqJCgntRY7gEIydEHY9KEx0BSYiVlVW8fJxpNOKF+EAO+6
 rCDQnnTqSInl2RwdlPGrpeSf/8Km9n1iQ8V08UdPF604vyW4LSVFJjZp2mrHDqBli2Fa
 afrxtkJCnYMmQ9zaO+NGohYcnxeZPKOYArZSm3WFTzNIU7OFVY7Z94wgE5D+CvWaZkR9
 EiZOS7qZRNbI+aICA/GE55kLVq2JR1jaZPef2tiIw6bAiUEkw4ENHtu5cYOqmoebVv/3 bg== 
Received: from mmsbuildserver2.dir.slb.com ([136.254.53.89])
 by us1190pfpoint09.mail.slb.com with ESMTP id 2vqu80tykx-1;
 Mon, 21 Oct 2019 09:22:05 +0000
From: aabyzov@slb.com
To: linux-mtd@lists.infradead.org
Subject: [PATCH] flashcp: Add option -A/--erase-all
Date: Mon, 21 Oct 2019 11:22:02 +0200
Message-Id: <20191021092202.95132-1-aabyzov@slb.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-21_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_022215_709115_6D0C0446 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.23.68.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrij Abyzov <drolevar@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Andrij Abyzov <drolevar@gmail.com>

Sometimes there's a need to erase the whole device when
programming an image, and not just the area under the
image itself.

Therefore, option -A/--erase-all has been added which
erases the whole device before writing the image.
---
 misc-utils/flashcp.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/misc-utils/flashcp.c b/misc-utils/flashcp.c
index c46a5b4..685ff45 100644
--- a/misc-utils/flashcp.c
+++ b/misc-utils/flashcp.c
@@ -66,6 +66,7 @@
 #define FLAG_HELP		0x02
 #define FLAG_FILENAME	0x04
 #define FLAG_DEVICE		0x08
+#define FLAG_ERASE_ALL	0x10
 
 /* error levels */
 #define LOG_NORMAL	1
@@ -89,12 +90,13 @@ static NORETURN void showusage(bool error)
 			"\n"
 			"Flash Copy - Written by Abraham van der Merwe <abraham@2d3d.co.za>\n"
 			"\n"
-			"usage: %1$s [ -v | --verbose ] <filename> <device>\n"
+			"usage: %1$s [ -v | --verbose | -A | --erase-all ] <filename> <device>\n"
 			"       %1$s -h | --help\n"
 			"       %1$s -V | --version\n"
 			"\n"
 			"   -h | --help      Show this help message\n"
 			"   -v | --verbose   Show progress reports\n"
+			"   -A | --erase-all Erases the whole device regardless of the image size\n"
 			"   -V | --version   Show version information and exit\n"
 			"   <filename>       File which you want to copy to flash\n"
 			"   <device>         Flash device to write to (e.g. /dev/mtd0, /dev/mtd1, etc.)\n"
@@ -179,10 +181,11 @@ int main (int argc,char *argv[])
 
 	for (;;) {
 		int option_index = 0;
-		static const char *short_options = "hvV";
+		static const char *short_options = "hvAV";
 		static const struct option long_options[] = {
 			{"help", no_argument, 0, 'h'},
 			{"verbose", no_argument, 0, 'v'},
+			{"erase-all", no_argument, 0, 'A'},
 			{"version", no_argument, 0, 'V'},
 			{0, 0, 0, 0},
 		};
@@ -202,6 +205,10 @@ int main (int argc,char *argv[])
 				flags |= FLAG_VERBOSE;
 				DEBUG("Got FLAG_VERBOSE\n");
 				break;
+			case 'A':
+				flags |= FLAG_ERASE_ALL;
+				DEBUG("Got FLAG_VERBOSE\n");
+				break;
 			case 'V':
 				common_print_version();
 				exit(EXIT_SUCCESS);
@@ -257,8 +264,16 @@ int main (int argc,char *argv[])
 #warning "Check for smaller erase regions"
 
 	erase.start = 0;
-	erase.length = (filestat.st_size + mtd.erasesize - 1) / mtd.erasesize;
-	erase.length *= mtd.erasesize;
+
+	if (flags & FLAG_ERASE_ALL)
+	{
+		erase.length = mtd.size;
+	}
+	else
+	{
+		erase.length = (filestat.st_size + mtd.erasesize - 1) / mtd.erasesize;
+		erase.length *= mtd.erasesize;
+	}
 
 	if (flags & FLAG_VERBOSE)
 	{
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
