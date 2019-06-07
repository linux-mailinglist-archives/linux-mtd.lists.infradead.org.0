Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D4838473
	for <lists+linux-mtd@lfdr.de>; Fri,  7 Jun 2019 08:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:From:
	Date:Reply-To:To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wbZ6+c8dIb+yyED+FpenkXES3iBwwPwuvIqxTtc6dhk=; b=ksK/31vs0HKCXh
	BONlaFbhNnhXxzR7eUYSLmeQ/5eZfa4tQB2aeSoRnbSZggAqkw3Z29MjRKDGI1ZnxSOLKiyRhcROg
	1NHg29Zm+75ND4Ag6Ao1Ch2uftNPQHLos3WUBuYP2cv1zhF9EJ40AQ305QLbtAIXYCNF+8yVcqjev
	t7jmsm+RlwmbEiCbXCRvUI/xuTcBR4Li2OAxiVgSRawBVCs2vOzNx5+nM/g6nsrwlIA9l2e0sq6/A
	iqzJ29Cy0pGyEdSDKj5c0j48O3amYIjcz7L9oic3uO9xp7N+G0gMuCZrx6WpXUn28lgcrRW2uqIlx
	Ydd7BE53Ols3u0Yn6y3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ8VQ-0004Sd-Ex; Fri, 07 Jun 2019 06:37:40 +0000
Received: from smtp1.iitb.ac.in ([103.21.127.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8VB-0004L8-UX
 for linux-mtd@lists.infradead.org; Fri, 07 Jun 2019 06:37:27 +0000
Received: from ldns2.iitb.ac.in (ldns2.iitb.ac.in [10.200.12.2])
 by smtp1.iitb.ac.in (Postfix) with SMTP id B0B1B105BF34
 for <linux-mtd@lists.infradead.org>; Fri,  7 Jun 2019 12:01:43 +0530 (IST)
Received: (qmail 29928 invoked by uid 510); 7 Jun 2019 12:01:34 +0530
X-Qmail-Scanner-Diagnostics: from 10.200.1.25 by ldns2 (envelope-from
 <rws@aero.iitb.ac.in>, uid 501) with qmail-scanner-2.11
 spamassassin: 3.4.1. mhr: 1.0. {clamdscan: 0.100.0/25472} 
 Clear:RC:1(10.200.1.25):SA:0(1.5/7.0):. Processed in 3.271093 secs;
 07 Jun 2019 12:01:34 +0530
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on ldns2.iitb.ac.in
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=7.0 tests=BAYES_50,IITB_ORIG,
 MISSING_HEADERS,PROPER_IITB_MSGID autolearn=disabled version=3.4.1
X-Spam-Pyzor: Reported 1 times.
X-Envelope-From: rws@aero.iitb.ac.in
X-Qmail-Scanner-Mime-Attachments: |
X-Qmail-Scanner-Zip-Files: |
Received: from unknown (HELO ldns2.iitb.ac.in) (10.200.1.25)
 by ldns2.iitb.ac.in with SMTP; 7 Jun 2019 12:01:30 +0530
Received: from vayu.aero.iitb.ac.in (vayu.aero.iitb.ac.in [10.101.1.1])
 by ldns2.iitb.ac.in (Postfix) with ESMTP id 217AF3418E8;
 Fri,  7 Jun 2019 12:01:17 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
 by vayu.aero.iitb.ac.in (Postfix) with ESMTP id A628E8902E54F;
 Fri,  7 Jun 2019 12:01:16 +0530 (IST)
Received: from vayu.aero.iitb.ac.in ([127.0.0.1])
 by localhost (vayu.aero.iitb.ac.in [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id FrMFcNjrnfJP; Fri,  7 Jun 2019 12:01:16 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
 by vayu.aero.iitb.ac.in (Postfix) with ESMTP id B09E28902E52F;
 Fri,  7 Jun 2019 12:01:13 +0530 (IST)
X-Virus-Scanned: amavisd-new at aero.iitb.ac.in
Received: from vayu.aero.iitb.ac.in ([127.0.0.1])
 by localhost (vayu.aero.iitb.ac.in [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id nIOVfjAWuQBS; Fri,  7 Jun 2019 12:01:13 +0530 (IST)
Received: from vayu.aero.iitb.ac.in (vayu.aero.iitb.ac.in [10.101.1.1])
 by vayu.aero.iitb.ac.in (Postfix) with ESMTP id 0EEE684310111;
 Fri,  7 Jun 2019 12:01:10 +0530 (IST)
Date: Fri, 7 Jun 2019 12:01:09 +0530 (IST)
From: Martins Henry <rws@aero.iitb.ac.in>
Message-ID: <412557711.60336.1559889069980.JavaMail.zimbra@aero.iitb.ac.in>
Subject: Thanks and I wait for your answer
MIME-Version: 1.0
X-Originating-IP: [10.101.1.5]
X-Mailer: Zimbra 8.8.12_GA_3803 (ZimbraWebClient - FF11 (Win)/8.8.12_GA_3794)
Thread-Index: SsslhYkcLNFU69da/wYft5cO9/ZYnA==
Thread-Topic: Thanks and I wait for your answer
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_233726_244489_E8A695BD 
X-CRM114-Status: UNSURE (  -4.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [103.21.127.13 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.2 MISSING_HEADERS        Missing To: header
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

Hello,

I am Martin Henry, An American Citizen; I am the personal secretary to
Mr. Donald Railton, the controller of a Lottery Company. Please I am
having big problem now, I have a 6yrs old daughter who has leukemia, a
disease of the blood, and she needs a bone marrow transplant or she
will die.

Please I am only asking for your help and you will benefit from it
also. As an insider with Lottery Firm, working as the personal
secretary to the controller, I want you to send me your name to play,
I have some numbers that are going to win, stored in his secret data
system in the office. The Lottery is an online entry with credit card
anywhere with a name and address. All I want you to do is to send your
name to play it and I will send confirmation to you.

I will play with my card on your name and the Prize will be shared
equally between us. Immediately the results are released they will
contact you for payment as the oversea winner. The lotto can be played
with 9.00 dollars, or 50 dollars but the prize will be Millions.
Remember that I am playing on your name with my card; I just want to
front you for this, because I need this money to save the life of my
little daughter.

Thanks and I wait for your answer
Martin Henry.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
