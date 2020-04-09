Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D061A3C71
	for <lists+linux-mtd@lfdr.de>; Fri, 10 Apr 2020 00:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:From:
	Date:Reply-To:To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O0yDr0VC666MmqNo7tcHpojXEYn6nvw0COSY+zt/vg4=; b=T2KCqB9g9pymUp
	bosIGLpZVaCYQ6I+xFhDv/ubTxvXd/0/wLWLaTCvc2Yq8fE1kycRAUZnsjBEKROBWS/1r0Yu2PIWa
	WFvsk7a+PBj3XfUdmSEpG2swK6E+8L0vLUXUCVvhOXDo05ID7tnTXfizIXR3BCEBSczfvDqJKoMch
	JQ0Vq2+4bdz1I8QQvQn6Y3UACKdgkPrtwK+XQxi4R4eVcuc7m+LdNEriS3U9YwoyS5/K83CmUB+9E
	UXgg0vTTcakpUBYEhFDafzU1r3VWVARgu1Q0fLddKbEDvJz+PFRY0Kw2Yk0VkKdgNbY15y3eN3gJa
	9/xhzGOO164IVJV+7RjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMfm0-00088R-TZ; Thu, 09 Apr 2020 22:35:48 +0000
Received: from mail.dsns.gov.ua ([194.0.148.101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMflt-00087n-0p; Thu, 09 Apr 2020 22:35:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dsns.gov.ua (Postfix) with ESMTP id AF8A61D2301B;
 Thu,  9 Apr 2020 23:30:24 +0300 (EEST)
Received: from mail.dsns.gov.ua ([127.0.0.1])
 by localhost (mail.dsns.gov.ua [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id SG-GV-2AnFgm; Thu,  9 Apr 2020 23:30:24 +0300 (EEST)
Received: from localhost (localhost [127.0.0.1])
 by mail.dsns.gov.ua (Postfix) with ESMTP id 686451D23037;
 Thu,  9 Apr 2020 23:30:21 +0300 (EEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.dsns.gov.ua 686451D23037
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dsns.gov.ua;
 s=1E60DAC0-2607-11E9-81E6-7A77C2B36653; t=1586464221;
 bh=njlCkWFc0hcw8eBX6ul4CN7Q0eDgIqGtksJn7ge99kc=;
 h=Date:From:Message-ID:MIME-Version;
 b=vEfDa5pbHw3c5lk8gcyGNdAqlhfk2+xqno7c6R0HH/jcl2WNzi7jWz6t0YejY9Iad
 i8L9hwclVE4sMIVy8zEZ/OKcGxH6h/T6xzekfj98cvlyLoCqMkjEAmhatH/a1CVIGg
 axfD9aHgzg7gnVdIWNkLRhA7PXUkMuspX86ZKIk2SAIldRTRtr4HzRQ5QcRm6nvxqH
 Q2gU9EAGl/HnwClBjEmDnDte/9CR9OzEeoOtyGSKc8xhr14VWrVSxSlwTXU7sUweGo
 u3VPLhu7nGW3FxWjmLu/9rJtr0Q1RZw+cyzcM72pzBj0fJeptJoIAl2fx+3BxkyZqu
 anQIu1bivZ/UQ==
X-Virus-Scanned: amavisd-new at dsns.gov.ua
Received: from mail.dsns.gov.ua ([127.0.0.1])
 by localhost (mail.dsns.gov.ua [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 11-d-bfS4XmA; Thu,  9 Apr 2020 23:30:21 +0300 (EEST)
Received: from mail.dsns.gov.ua (localhost [127.0.0.1])
 by mail.dsns.gov.ua (Postfix) with ESMTP id D5E3E1D23005;
 Thu,  9 Apr 2020 23:30:12 +0300 (EEST)
Date: Thu, 9 Apr 2020 23:30:12 +0300 (EEST)
From: Peter Wong <avia_duty@dsns.gov.ua>
Message-ID: <967128813.17948.1586464212719.JavaMail.zimbra@dsns.gov.ua>
Subject: Hello
MIME-Version: 1.0
X-Originating-IP: [45.56.137.91, 162.158.150.7]
X-Mailer: Zimbra 8.8.15_GA_3918 (zclient/8.8.15_GA_3918)
Thread-Index: u//V3EIJiunm5n9Av39vqIjlgBzZAQ==
Thread-Topic: Hello
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_153541_248378_08D24894 
X-CRM114-Status: UNSURE (  -2.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 MISSING_HEADERS        Missing To: header
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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



Can we talk now?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
