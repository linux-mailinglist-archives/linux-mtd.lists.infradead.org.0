Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A1590589
	for <lists+linux-mtd@lfdr.de>; Fri, 16 Aug 2019 18:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:From:Subject:Date:
	Message-ID:Reply-To:To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zmAtpYUCX0NedzQ1Wo9lpX4Qcv7BvQs4YJmaq7Pzlms=; b=Yrk
	sVYE9nlDSWVceJ+kiJtKn6iZtRq+rGPUX63WsHC3Qvcs5wBBJPS0vzf/0Yx8Ouv4iXn8yTMEgx6RE
	tGG+4bhj4HDHRXxNs86WO3+uT4wyY3Sn2uYx8OeMXvDCx9Pcz12zxs2N2f2IdqYXH3v2RifZBhB5S
	NKl+hZu4TJSFCQF//J0AaRc0X+y6gBFoZ68bt0TwtTL5ODRvxmAjvJysIoTojrgE4UEZ5c+2QxCVG
	Qe5LgltnA6dttEMUFBF/gI8sLKRtZsfL4J+s7NEECffRbTYKI6u4nU0HKrHT0n3rHNsbaynN6DPBl
	zKY9hiSVq2MGSodT/vH6kw6XwCCT2mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyerZ-00079m-QD; Fri, 16 Aug 2019 16:14:01 +0000
Received: from mail.csu.ru ([195.54.14.68])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyerQ-00079T-1d
 for linux-mtd@lists.infradead.org; Fri, 16 Aug 2019 16:13:53 +0000
Received: from webmail.csu.ru (webmail.csu.ru [195.54.14.80])
 (Authenticated sender: pto)
 by mail.csu.ru (Postfix) with ESMTPA id 1D582144004;
 Fri, 16 Aug 2019 21:04:53 +0500 (+05)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.csu.ru 1D582144004
Received: from 41.90.201.215 (SquirrelMail authenticated user pto)
 by webmail.csu.ru with HTTP; Fri, 16 Aug 2019 21:04:53 +0500
Message-ID: <f3abd1c0315ab3d3867c41e6bcd44602.squirrel@webmail.csu.ru>
Date: Fri, 16 Aug 2019 21:04:53 +0500
Subject: 
From: "Lisa Robinson" <aweb4111@gmail.com>
User-Agent: SquirrelMail/1.4.22
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
X-KLMS-Rule-ID: 2
X-KLMS-Message-Action: skipped, MessageAuthentication
X-KLMS-AntiSpam-Lua-Profiles: 143812 [Aug 16 2019]
X-KLMS-AntiSpam-Version: 5.8.6.0
X-KLMS-AntiSpam-Envelope-From: aweb4111@gmail.com
X-KLMS-AntiSpam-Auth: dmarc=fail header.from=gmail.com policy=none;
 spf=softfail smtp.mailfrom=gmail.com; dkim=none
X-KLMS-AntiSpam-Rate: 30
X-KLMS-AntiSpam-Status: not_detected
X-KLMS-AntiSpam-Method: none
X-KLMS-AntiSpam-Info: LuaCore: 312 312
 4c9e4568ba55fc3cf9a6a6ed868a456a9232a9d4, {rep_avail}, {reputation received:
 black}, {black address: 41.90.201.215}, {Prob_to_header_missing},
 195.54.14.80:7.1.2; webmail.csu.ru:7.1.1; gmail.com:7.1.1; 127.0.0.199:7.1.2;
 d41d8cd98f00b204e9800998ecf8427e.com:7.1.1, ApMailHostAddress: 195.54.14.80
X-MS-Exchange-Organization-SCL: -1
X-KLMS-AntiSpam-Interceptor-Info: scan successful
X-KLMS-AntiPhishing: Clean, bases: 2019/08/16 15:13:00
X-KLMS-AntiVirus: Kaspersky Security for Linux Mail Server, version 8.0.3.30,
 bases: 2019/08/16 08:52:00 #13865890
X-KLMS-AntiVirus-Status: Clean, skipped
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_091352_301164_3197E523 
X-CRM114-Status: UNSURE (  -1.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.6 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aweb4111[at]gmail.com)
 1.2 MISSING_HEADERS        Missing To: header
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aweb4111[at]gmail.com)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 XPRIO_SHORT_SUBJ       Has X-Priority header + short subject
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

CgoKU2llIGhhYmVuIGVpbmVuIEdlbGR6dXNjaHVzcyB2b20gTWlzcyBMaXNhIFJvYmluc29uIENo
YXJpdHkgUHJvZ3JhbS4KRS1NYWlsIGbDvHIgd2VpdGVyZSBEZXRhaWxzLgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlz
Y3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1tdGQvCg==
