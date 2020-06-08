Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EEC1F1FA2
	for <lists+linux-mtd@lfdr.de>; Mon,  8 Jun 2020 21:17:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UL/VcKbSIwWhCdi6cb1jwqfweRjFfAmlFa+ionnNzpE=; b=o53ymMdD6fhmgN
	OEaWw38W8exkjk1Z0oAvJrSPcfo1EVifHT79L7vEbAq7tzI1P1f52vtJeC25x68G/C77950VgJ83c
	XO3bAwM8Jgas9o/LBFAEzYc4Mhw78y3AzbPPUeL4ybIZMvFMYK7qEjFvtyWbWSVGvrJInWnQvMdMD
	0hv08toVqk9qi4MxZTpE5ANeh6NKkVsSgJtvCALe4NLHZUq7XpjA9ZeTaGsEVdt7hgzu/bjMh0KT8
	9tZWLamj8Snm2q9lOZTKoGmxLP2rGC8R3vsfbJeLW3sqPQkshUHMAmHnPHHO0tmUrmhIq5LihflQT
	TattfZV3uYTh94Cmr7Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiNHC-00050z-KG; Mon, 08 Jun 2020 19:17:42 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiNH3-00050U-Ua
 for linux-mtd@lists.infradead.org; Mon, 08 Jun 2020 19:17:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id g10so607676wmh.4
 for <linux-mtd@lists.infradead.org>; Mon, 08 Jun 2020 12:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=BBWR1Cg8EECnnJsdu4XHKmoBfmbHYVRsdfncEkjnqIs=;
 b=nzcbAKAHYpaEJRJK2yiz10AiqOw4dGFsD3HfDOqB2IZEwCmz22gkSFQCUAco0P4BYM
 Rq63gncr/YQjo5laFbiF8oxyIfjk5DWXdumkpgMZpKxi4ttC0rDxu/Z+7RmB+k97pRKe
 eFUQ9Aci6EG0PS5GMUBS+XxeJz8VkDimnCTkIM2ItSE3VaEJkm8aMS1jMpRcIOXYgspS
 8Un7a9KRFL7GD0FiIYeuD1C97WFvtDsax405X1tLKZa4ri6DLTJsCz3evNzO4poHRx4m
 rbsthHt4Po8SWgnzFOjZpR45j9JN3X2IYpKBGd3LJcVU8SZYh7aVO8M6MUcKfX66uRCF
 fpzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=BBWR1Cg8EECnnJsdu4XHKmoBfmbHYVRsdfncEkjnqIs=;
 b=UNAIIdVnkngMgSo4psfisbrY5qMScJjJW53EbiFVmicQAk54DGbIAawtG26gTIds6H
 X6rfxPni0yZl1lH/1+nkIXdXhY91EvAKshbefTKpiFk/rBln6zEtzm2IuEfKLeXCW9PJ
 YQ8ges/mXxAUYDP8+SM+gT/I18+jEtksRyy28pMdtyQdkVEPhrb1GCXX32PShqQ3Eyag
 A3BrIAItB2ENNg8OpDw81vmbhofgfQEVzerX5GS1rhWvjRQKBHGzXAkS/hiVQI1pffz/
 onvQsKHGChPOnNejMvToKazPLkOJAWe7+OA1TGacTr2hel/zxRM5fHznotP9rStDMPR0
 L0SQ==
X-Gm-Message-State: AOAM532n5WDA14d+lKVzszPRRsNoE7oD6bvEMRxUz2Vzux0Lm+9kREXQ
 i2XwbIl1QMDZR/utmvZARQHBn2B0LBECjXF/olY=
X-Google-Smtp-Source: ABdhPJxXsgByCm/ztlnRrMLu/kK+blLcejHeJOc3iOeDrMLFuriksfjPgn3BAodOpLPrwIiNb304CC4ytYqnUgRnqYk=
X-Received: by 2002:a1c:ba86:: with SMTP id k128mr184670wmf.19.1591643852235; 
 Mon, 08 Jun 2020 12:17:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:91c1:0:0:0:0:0 with HTTP;
 Mon, 8 Jun 2020 12:17:31 -0700 (PDT)
From: WU SS <i.buba1111@gmail.com>
Date: Mon, 8 Jun 2020 19:17:31 +0000
Message-ID: <CAMASMtxEXg1orO9LRBybbQ=3Vo5WC0yPZ=Rjm80YaLcUnSHQTw@mail.gmail.com>
Subject: Are you still on this email?
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_121734_704965_B5E3D712 
X-CRM114-Status: UNSURE (   0.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [i.buba1111[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [i.buba1111[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 T_MONEY_PERCENT        X% of a lot of money for you
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
Reply-To: wu_ss@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

i need your interest over a transaction of $10.million. This fund will
be transferred into your bank account from the bank where i operate as
bank manger. The percent will be 40% for you and 60% for me.

I wait your respond?

thanks From, Ibrahim Wus bank Manager.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
