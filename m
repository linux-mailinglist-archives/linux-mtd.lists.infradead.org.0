Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B708912CBF5
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Dec 2019 03:41:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tF3F6n6zbGn5Z/VsfQwhKrD3bnmaTEO62cq01L+VNfk=; b=SSxV3hOE+pHDHu
	Jx7r0a9gb/5+7gnI6q1kvhAJg8peIvb5PRYrX2qGbY/QNvg5Ytt7/CvXzNWYDMpKYQytGV93Q1kq6
	2yQ981dTovrACGAGYi5oLFnGk9grwP1zyIHFYejwVM3LBIDHhBryxdEi3IY9j6oyYVfMALlvPQhqs
	jDYvxMZWC6tx/KKiFB3kfxryvMH3YFO4+0vwLFMVUwCP+WjvODu4DYm8yyoaTZEMl9+07kV7Wbi2B
	8k7nHNByOEn6B7FXIqY0QlT8KqICO30H6U2Bwe5bwfSmXuz7mjVKCxmMGOvGj92Q6JXl/pYujEOA6
	0f5w8h9NxiRSGt46P+6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilkzH-0000ut-1B; Mon, 30 Dec 2019 02:40:55 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilkz6-0000tt-Eh
 for linux-mtd@lists.infradead.org; Mon, 30 Dec 2019 02:40:45 +0000
Received: by mail-io1-xd41.google.com with SMTP id c16so494164ioh.6
 for <linux-mtd@lists.infradead.org>; Sun, 29 Dec 2019 18:40:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=cCgjmSxLWlMql57U+O40bnMOsF2pBGMu0xtRuJWN4EM=;
 b=SKWmv9HkO+VH27lcJaQxs2Jw/tBSajVdDL3HDug4vyXoUTauT1UyzkayPDUDEgwTmq
 QI34Ks0gz55aXchlP6Uqlu0UbahGhwcpHaXGZfvikz1oCzbkFLIr0ps+Kb8H1FNu+ITY
 b0db7hsY7aQkF8V0jjPIVBGegc5QEUk+AEJU3WbnL6NnCNWX3C+Jwql4svipwchx+7T4
 5vr//kbXVy/zUm4kCPUUszvmqou3WTA0Xs4umXNwqFzREUZBU/3xnyXkFVJcwR9o9CBQ
 vhkZ0vb+O7iftkQhebhphxfc1egNtF4q3wDgut5iAYF2VHq8ukB9PScFTwDKk2ANpumn
 OrGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=cCgjmSxLWlMql57U+O40bnMOsF2pBGMu0xtRuJWN4EM=;
 b=FzoWnBA/sLPYCKQOvivLxZ7Zh6olQpglMEftTXcp+np0o6uSNSOxs2hyAb9vHL7xre
 +DoZlWH62NB/UO329/fP74JLPCY6nt30vE/zu3jlkJc+mwZiaZJL/UCesF0Bw7kdZEds
 xoSkMN8eS1UL5saudj3CWsk54WtFDJ2+Pa/kwZHHucd4xOXg3YvAhetiJi6X0cBZ5JXC
 MpRywxI/LLZgGX/h4CspUB6fIYiY+osAZ/lBw0NlWvZGGLkk0dXPBi6znGHvun76O2xR
 ZsubKYWo93r3Dd33YjvNamnd/j9ujFH0NVwgpJx+mUMy6co6MVZb3S8RWkU0cKyL8TJS
 Kp7A==
X-Gm-Message-State: APjAAAWrDH7h4vWQTXJwkMCBV1FAkfjI6pQbik+BFsM6AXy5A4iAX5JE
 ZRxbYyHUhpmyfkkMtX0WdrSKkwvIvvLWkx8+N8M=
X-Google-Smtp-Source: APXvYqxUFqhRi61PMASvEE/FRnTXelMzbpMdALzzS8eMryN1Jq/czjLx3OUE9u2iIgPkVlQ9jkA6YhSOogkgQ/nlgeU=
X-Received: by 2002:a02:a694:: with SMTP id j20mr52287841jam.69.1577673640933; 
 Sun, 29 Dec 2019 18:40:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:da0d:0:0:0:0:0 with HTTP; Sun, 29 Dec 2019 18:40:40
 -0800 (PST)
From: "Mr. Moon David" <pjius001@gmail.com>
Date: Mon, 30 Dec 2019 02:40:40 +0000
Message-ID: <CAA0xNFBv9GHYg1tpyzkBv6xCK28pxY0UwU-afDmxfreTcmEUpw@mail.gmail.com>
Subject: Greetings
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_184044_490310_0285CA0B 
X-CRM114-Status: UNSURE (  -0.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.0 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (moon.david001[at]yahoo.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pjius001[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (pjius001[at]gmail.com)
 1.7 DEAR_SOMETHING         BODY: Contains 'Dear (something)'
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_HK_NAME_FM_MR_MRS    No description available.
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 1.0 PUMPDUMP               Pump-and-dump stock scam phrase
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
Reply-To: moon.david001@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Dear Sir/Madam,

I have investor that want to invest $6.8 Billion into a  company that
needs fund  for expansion only.He can not invest the money to new
Companies that want to start up but into Companies that has been
making good profits but needs funds for EXPANSION. He can only invest
in start up if the investment proposal is realistic. The investor is a
former Petroleum Minister.

His Area of concentrations are Real Estate, Biotech,Textiles ,
Information technology, Pharmaceuticals , Oil & Energy Industries,
Mining &Metals Industry, Management Consulting Industry ,Maritime
industry, Hospital & Health Care Industry, Consumer Services Industry,
International Trade and Development Industry ,Gambling & Casinos
Industry, Electrical/Electronic Manufacturing Industry, Insurance
Industry, Chemical industries, Marketing and Advertising Industry,
Leisure, Travel & Tourism Industry, Agriculture, Aviation, Retail,
Import and Export, Trade and development industry, Real Estate &
Construction Industry and any other viable investment opportunities.

If you recommend a Company to take loan or investment funds from from
my client the investor, me and you will be entitled to 5% of any
amount received by the Company from the investor but if you are taking
the fund directly as a company i will be entitled to 2.5% and you will
retain 2.5% as Global Finder's fee commission. There will be a face to
face meeting between the investor and the investee after signing (MOU)
the (AORI) should not be less than 3% per annul if it's loan or direct
project financing.

Look for a reliable Company that need funding and we can easily make
5% of the amount received from the investor but we need to maintain
absolute confidentiality in the transaction as the fund provider want
to remain silent, so you have to keep it highly confidential between
us.

I will need the company profile and the project summary of the company
that will need funding to present to my investor.

I look forward to hearing from you.
Mr. Moon David.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
