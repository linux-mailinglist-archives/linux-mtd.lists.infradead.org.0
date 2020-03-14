Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29348185615
	for <lists+linux-mtd@lfdr.de>; Sat, 14 Mar 2020 18:23:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=67Bg8ulE8fbNUcwIkt3svv0UQPuk542cCviQW867MQU=; b=SCa
	wrKO877UUJSd/QcqX/NaqHmurcL/49Vzj7wQ2U3VFxaEuijVu48fWQdZn8k89b/w5vpP/O8y/RNE0
	EsPUbTHpff8PhOcx4c9kB21MGQHKckupQPeh5AbA/vHmAMoUKpBNYneZ2DWTAMeHnXtE6+ChRKjOa
	G/KaiPdKfiaEogSV+Cbq//K8knUTgQYOoh2KkLarECfSrVUoCmKCxpzP/hJpHPXsADQVD3+VZSD72
	nQKc/iAyEVzILcrW6WDYx6+9DknvbZBBkpNAVYngP1hghids1zMmAlt1TMJLMdLxMlI3rXobzJr11
	dQHQzaYszKqQ302XCyX+gAM88UcBzOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDAVm-0007YC-0Y; Sat, 14 Mar 2020 17:23:46 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDAVf-0007XT-1o
 for linux-mtd@lists.infradead.org; Sat, 14 Mar 2020 17:23:40 +0000
Received: by mail-io1-xd41.google.com with SMTP id n21so12768505ioo.10
 for <linux-mtd@lists.infradead.org>; Sat, 14 Mar 2020 10:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=rySLrb6e8pdxDloLytBEUWmIP8HvBNLPxIuJLcg1j9c=;
 b=h9YhYCfhuvcoOK9JuTSnuiXg2cILoy3ExIWXtsaJYq8huKBTSezqcgybwNUJnF31OD
 8M4XkdAA+wF3Kc0hz30O/kK9eMooTs7yoqdIBJNfvWQnNRWRGMPcYzXrJl2zdeF1j7va
 J8XdxMT0KmL8llAYJuvJtfAv+moo5flCUCJCh/tlglJ+fFmIUPVbZ1fac7bCjKhbkCn+
 rZJerUAJLBThHl7kvNkOSCFj/J2Gim7L2OHs8nEEBbbGF0yG+oMEoxI1m7Q6XmwEaoXK
 TKHu+SSgJteucaBn++J1ylejcFocesa/O0LZlk7VxDKA6TPZDYhdjLA4ADjt7vhRjRdb
 KZMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=rySLrb6e8pdxDloLytBEUWmIP8HvBNLPxIuJLcg1j9c=;
 b=E0v7Xqp9O4SGEBuaiIT0yLtUGnimCKojkxeFGX213NVNN8uunQ+2p92bC3hvr1IwFc
 qc15Qf+/ZNKitw2gASNXuaIfHm3jDaWFgQklpxbmft0Qo7gPyYn2eCWPZ7+oW8OVUR31
 U9WU1heNpJZ7BaDmE5Dtv8hDzZ9RUvwE4eMfjrrvhm3JNABPiqBjZ3EX4LM2w4ixqFxn
 /UQT2eYTbXtQLKz3+w22Cf2fE/+gz8UepWpCErsbetvGdTowAnXsCLA6wXR2QzcGxzWe
 C290Cs0WtoIb1g31ivDkuG3Mbarqs1SzuOpTLv0glSx7CV6RAZZSZxr7QSV5x4M2zY3L
 iPcQ==
X-Gm-Message-State: ANhLgQ2lQCEWoashtNMJsHPbrldixgqG4JQT3sZEHIi34N2xGDYp7to3
 jj2Zqld41243TzUUm9kCVbJDUFsKu1TAhcq5rGw=
X-Google-Smtp-Source: ADFU+vsJ8OZ/Dhr0DwwgkL8CDPySYZHLYuNtMBF50V178xoCgQ3+Wbsy6eqrOFGI1hDMkk7GA6AGM8FMlDHfqPtuVxs=
X-Received: by 2002:a02:3f4c:: with SMTP id c12mr12249418jaf.115.1584206617074; 
 Sat, 14 Mar 2020 10:23:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:63c1:0:0:0:0:0 with HTTP; Sat, 14 Mar 2020 10:23:36
 -0700 (PDT)
From: Omar Ousman <omarousman25@gmail.com>
Date: Sat, 14 Mar 2020 18:23:36 +0100
X-Google-Sender-Auth: e3Esaw6NMf2t59gU8aF8hbfxq5E
Message-ID: <CAOdk3H=BWVFSbBHnPp89pkv5eyhE_YLWx_uztwjom2+untGdDQ@mail.gmail.com>
Subject: You received my last mail,,,,
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_102339_089476_58B64109 
X-CRM114-Status: UNSURE (  -0.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [omarousman25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jcliff271[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 FILL_THIS_FORM         Fill in a form with personal information
 2.0 FILL_THIS_FORM_LONG    Fill in a form with personal information
 0.0 T_FILL_THIS_FORM_LOAN  Answer loan question(s)
 0.0 MONEY_FORM             Lots of money if you fill out a form
 1.0 MONEY_FRAUD_3          Lots of money and several fraud phrases
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

I am Mr.Omar Ousman, a regional managing director (CORIS BANK
INTERNATIONAL) Ouagadougou Burkina Faso, in my department we have
US$9,500.0000 million united state dollars, to transfer into your
account as a dormant fund.If you are interested to use this fund to
help the orphans around the world contact and send me your personal
information for more details to my email omarousman25@gmail.com

Your full names..........
Your country of origin..........
Your occupation..........
Your Age..........
Your Mobile Number..........

Best Regards,

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
