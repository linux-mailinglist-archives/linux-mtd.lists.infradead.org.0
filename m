Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB23F4B54
	for <lists+linux-mtd@lfdr.de>; Fri,  8 Nov 2019 13:19:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RKoC0yFjiaeoVhSfO6sn+OwzAwhskC8AKvB8prvc6lk=; b=pi4
	Xdee805Gz3a7cWuAlHbxeqE0Mtntgc6lx/pntDlyKOytAhLfsKWaAZBBiNdKsmMc43LQkN+sYzb6/
	Ufvc/gZ9s6Ae0tEKjErAVjuejucf5MMEb6ocrA+lNNwSqpzCz1m0dbqMJ5gxKYdxo2lyHPxEHn/08
	qW32iIzfPkCL5/AU+pPy6wHsluYdn32W5IP7+0DogpgK3zvQV+avgKF7GEHl0IhSPhPqxPe6xRLAh
	5p57JQRDUTqbqPYv3s8Uq3+ladsrgVM5wgthUf6EKBcsOqaYG6JzCFeqsOD/TnEvywWlQDTLX1dZn
	1slg9TTa9z3y3k2nkgDgJRotG1hlQ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3Eq-0005Nw-8e; Fri, 08 Nov 2019 12:19:40 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3Eh-0005Mg-Pj
 for linux-mtd@lists.infradead.org; Fri, 08 Nov 2019 12:19:33 +0000
Received: by mail-vs1-xe41.google.com with SMTP id j85so3607360vsd.11
 for <linux-mtd@lists.infradead.org>; Fri, 08 Nov 2019 04:19:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=uzkBPRXvCt/DLxmv4J4lMqCgFgNyDxmGoOdWkPBD3nk=;
 b=XYuw8KZ+t5rMMN7ZnEAcKfmi4FJBjvq+w1CW27MxJ1IBSihw3f6NMB0kz9hNNOKSA9
 J2Trm5E0Ke7EUM4wqiHmS0TmekryN+dkLvu9mqY2s4zcYsANB3HeeovgFfmzqal7t/kZ
 3QQVxz0eUXNY5tdL//FLTevuTexH/U++q0QA5MbV4X1gSdWj5rKxPvst3vKDveC/46MI
 6AKiRdit4PuUSecnX6BNCxQB0CGxTf1yC7PJvQwssN7AkypzbcKaZIXxLHKDcy/Hk7Y4
 tm2ACH5tX2n7J8sN3FpjF/3zXK+9RFrUwUfGwqj75kSB0fjF3kPpNJqQMdQDi2pOqLIa
 jz+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=uzkBPRXvCt/DLxmv4J4lMqCgFgNyDxmGoOdWkPBD3nk=;
 b=FJ+cFw9mkAxFVm4jDxd9Os0mvy0yjjBBDuhvp8x3WEmiDIPoe0VIWiS6AZcD40OLYj
 9OddoXH3IwRdRPx3iXtiN/uz7sQ/pHDIJiRVJGj4ZEueP0eJNaNRwOjulQu6pZ/ikMWk
 tFBJU5fS3i/QorYC8VTg17XCdH8GfduNz19HqRrq768Q6Y7fPnckJIj527t1fQmqEFP7
 dcb1IuPXcYJjPZ7OtTIK5Ps2SaxW7+XMTQ6reEEqjQJ5Tr0v/vB2FnkrMl9LzmmLvEKw
 +65TYXNmWdmsgVqit8W9kXOCXcjM3CnGlJWx4gwykk1JT2NyY7nlCqQ8Kh/t5XRCGB+j
 Lb9g==
X-Gm-Message-State: APjAAAWirG86q+dFhJrmkWC5HRnPQ6K/+YQb3ZTTeEzWqNc+W3tY78c3
 jJYwuJ1bH76+sGnUCI1M2Np4I3pp2Drz/IXWug4=
X-Google-Smtp-Source: APXvYqw8COZPu8g8jYizrANupLDvzdHkKFmM0bfTn9lm7CpQlNF1U0geWswsuIk7loJ6xO4eRv2MGqO+JMDt+NIu4+8=
X-Received: by 2002:a05:6102:117c:: with SMTP id
 k28mr7746622vsg.168.1573215566805; 
 Fri, 08 Nov 2019 04:19:26 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:5929:0:0:0:0:0 with HTTP;
 Fri, 8 Nov 2019 04:19:26 -0800 (PST)
From: Kelani Alfasasi <alfasasikelani1@gmail.com>
Date: Fri, 8 Nov 2019 12:19:26 +0000
Message-ID: <CAC22Kig4iQ2Fxn+gp5RCPkmegqjA-Ed7hd68Sd1F5Bez6jm7aw@mail.gmail.com>
Subject: hope
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_041931_832745_0BEC2978 
X-CRM114-Status: UNSURE (  -0.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alfasasikelani1[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (alfasasikelani1[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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

Good day , i write to inform you as auditor onbehalf of ORABANK.

Transaction number 000399577OBK have been approved for release
through VISA ELECTRON ATM Card.

Note that you are required to reconfirm your complete mailing address
for delivery.

Reconfirm code 000399577OBK to the Director Mr. Patrick Masrellet on ( (
atm.orabank@iname.com )) for further action.

Regards.
Kelani Alfasasi( Esq)

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
