Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730B512008B
	for <lists+linux-mtd@lfdr.de>; Mon, 16 Dec 2019 10:09:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MDU1ylH9Gc2FkhhMKB+hGr6eCPUKN32tldAR+urCIeU=; b=HkyEUiNMOBIBUz
	dRH8rcVf7ROY90U8kumjlwSsYBk1A45EqPCOw6Kr36qvjQlXBNqR1ol1iOIhnQS8robbGnmEaJnq+
	dtpalOQwbuaB1TLuaO4xq6XE2NVLCbl3ak2Om3aimVmuQWc7Jve+2xfbFbEWzcvbjtwqe6gUY1UyJ
	IxKe4PShQKrpV+PBp3MgCMyuKWP2EactDV2D0LhCUHsm4UImmZdioicYQNmMLuE17QLCWYuEgQBth
	nq6fA1pT7AA+Ugr023ti8+tJmC4hii0mXdL2XYaGicNV+eBvi+5H9ZWwVgxCh1qJol9ZnUAY6PtZ4
	DPh8nhBTALE0DYnuSI+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmNq-00013c-Ce; Mon, 16 Dec 2019 09:09:42 +0000
Received: from smtp.eckelmann.de ([217.19.183.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmNh-00012S-Sd
 for linux-mtd@lists.infradead.org; Mon, 16 Dec 2019 09:09:35 +0000
Received: from EX-SRV1.eckelmann.group (2a00:1f08:4007:e035:172:18:35:4) by
 EX-SRV1.eckelmann.group (2a00:1f08:4007:e035:172:18:35:4) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Mon, 16 Dec 2019 10:09:20 +0100
Received: from EX-SRV1.eckelmann.group ([fe80::250:56ff:fe8b:faa6]) by
 EX-SRV1.eckelmann.group ([fe80::250:56ff:fe8b:faa6%3]) with mapi id
 15.01.1591.017; Mon, 16 Dec 2019 10:09:20 +0100
From: "Mainz, Roland" <R.Mainz@eckelmann.de>
To: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Subject: Support for @(POSIX|NFSv4)-ACLs on UBIFS ?
Thread-Topic: Support for @(POSIX|NFSv4)-ACLs on UBIFS ?
Thread-Index: AdWz8FX7isH1Se87ReqfFAVbE0Dz5g==
Date: Mon, 16 Dec 2019 09:09:20 +0000
Message-ID: <4cb355340b844ab49671eb1068f45434@eckelmann.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2a00:1f08:4007:3c00:e079:6641:a7b5:83c7]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_010933_924686_D1D4F26E 
X-CRM114-Status: UNSURE (   2.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Hi!

----

Are there any plans to support POSIX ACLs (or the extended NFSv4 set of ACLs) on UBIFS ?

----

Mfg,
Roland Mainz
-- 
Roland Mainz, MAA/CAS
Eckelmann AG, Berliner Str. 161, 65205 Wiesbaden
Telefon +49/611/7103-661, Fax +49/611/7103-133
r.mainz@eckelmann.de

Eckelmann Group - Source of inspiration



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
