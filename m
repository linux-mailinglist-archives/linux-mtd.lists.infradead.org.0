Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A0019A07F
	for <lists+linux-mtd@lfdr.de>; Tue, 31 Mar 2020 23:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4axLZ1qINqGZKf5Hme8bvF/N35+BDPF05qC3FWv3Z7o=; b=NwkAa6GoLe1myh
	+zyrfz+y0PBCfozoWnTHypDg0CQxDdq3az9jP8ewNXAEmx8HGBqBLezE88oM4o02hC7WlKQFh/Ow8
	6LMHkrlyeH7Vftq0Zk6GwT/TQsunW6RDFeyI9LeVa+SLbFUVvSkRDuf//GW61zP3hnvYB53g4ZotB
	/I2QiEtcZ3jH9eFgGM5K2zaRkkqhI7LPr9Bw8xspEAkHkSc39YAME1tbHHxqiKwLPWNm5c5pGQv5N
	6zoh4ujDGZe4seTsFhIOQav8ouT1WhJkY2CM7/XKWNJEGu5niOMbTQU7UZk77qakFPC4d+tUFfMQo
	0ie35MIsJFX1VaABKeag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJOCP-0004iq-4f; Tue, 31 Mar 2020 21:13:29 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJOCI-0004i5-7N
 for linux-mtd@lists.infradead.org; Tue, 31 Mar 2020 21:13:23 +0000
Received: by mail-qt1-x842.google.com with SMTP id e14so19791113qts.2
 for <linux-mtd@lists.infradead.org>; Tue, 31 Mar 2020 14:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=BDLu4BCkm+Jnqc5zSIvTfuz2SxsHBrDYB6DXZhzD3Mk=;
 b=Ub4NV8m3Rx25iqO/Z3yhB1mH9VEs/w86Gt5+V9DGUjvJCgCV5zZILBtzwMfDbEistH
 EJ3wMKsPDRpSqKbPqLBFIk2KkTO3hAtn8YSITUJibUrDe3nxFLBUY42FkdggNUzn9KdS
 nGZVXLGHdt4ANke3uzUbASywVakxRuAdtIm+Yi6krqGq+BfWehBKmQW7EOAt+Lf4VRkE
 o9S4WWF5LhwVEVAAhUl+HKdvlWvzS9T50hMbX1DEMnvOXKwHooKoW3w6UTEA4v2asxZ+
 6m2OSpMKIu7vQ0/J6JoVqBLjKV4EM2RnJD4Ji/tNE7tLygWEZ44lGhxbXS5+TJZ3tbD5
 Gfqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=BDLu4BCkm+Jnqc5zSIvTfuz2SxsHBrDYB6DXZhzD3Mk=;
 b=ItiLKvNPCGyu6pBKENi9FVaDUe3W+zVccnvmnwmINKCKD9/saVD8q0tCI5B7OySwRL
 K6uv9gopulw+Afeg0gfNhm2lmsim9b3I7NKK9VZ4lMIarcr8hYjcfaiZa7ldQH0JOoAR
 aa/LKVxMDSAyoeDbakyvQAJwZmuFTU0Px1/jhU55X9/1J5ZAqo4oKLjDlQKDS8Wi9jUR
 WMA8tk8SyG0mabMA2jCePhuvpZ8ypr8GHqIhqz/UVFBap2jzAIZ6Vgzya+RkVWU83HSD
 e6hZ6781MM0EQyRX5Yls+6BjVprxm6DPVHvpPOUPNIw0iPBSW7uwNCa91Oi6U4AVaa35
 Zy8g==
X-Gm-Message-State: ANhLgQ1Mn4xv4tBekp2PfBbuK1leQ2P/5CHKJ0wId1XjJBFJP9jx3Vjj
 cCnvhpvyZ0sqlKsNTgOxovefWehAvzvKbfaYKP4=
X-Google-Smtp-Source: ADFU+vvEaWvl4dTQqZ0UkrkQx6+IcQrxpx/jPlviBoDLJMJr4Nmix7CXa9a7/HUhjtUh3KTQaGHtZUGxEDifOX5uSo8=
X-Received: by 2002:ac8:4603:: with SMTP id p3mr7340590qtn.78.1585689200631;
 Tue, 31 Mar 2020 14:13:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:9e59:0:0:0:0:0 with HTTP; Tue, 31 Mar 2020 14:13:20
 -0700 (PDT)
From: Mr Akain Karim <mrnyamenemedimafo@gmail.com>
Date: Tue, 31 Mar 2020 14:13:20 -0700
Message-ID: <CACs4+1016YfnvPFXmXvjaeHyT1o+WsdZf9NDd7iyWw5WUwQNCQ@mail.gmail.com>
Subject: COMPLIMENT OF THE DAY
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_141322_265481_5E995C7C 
X-CRM114-Status: UNSURE (  -2.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrnyamenemedimafo[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [akainkarim1[at]gmail.com]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.4 HK_SCAM                No description available.
 0.0 T_HK_NAME_FM_MR_MRS    No description available.
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 MONEY_FRAUD_8          Lots of money and very many fraud phrases
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
Reply-To: akainkarim1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Compliment of the day,

I am Mr Akain Karim, Product Development Head Private Banking & Wealth
Management at the foreign remittance department, I Have a Business
Proposal of $10.5million For You and I  was compelled to use this
medium due to the nature of this project, I have access to very vital
information that can be used to transfer this huge amount of money,
which may culminate into the investment of the said funds into your
company or any lucrative venture such as business ventures in Medical
and Health care projects, Real estate projects, mining projects,
agricultural projects renewable energy projects, Oil and Gas, start-up
projects and business expansions / Loan with lower rate. in your
country, If you will like to assist me as a partner then indicate your
interest, after which we shall both discuss the modalities and the
sharing percentage.

Upon receipt of your reply on your expression of Interest I will give
you full details on how the business will be executed I am open for
negotiation.

Note you might receive this message in your inbox or spam or junk
folder, depends on your web host or server network.

Your swift response is highly needed.
Thanks for your anticipated cooperation.
Best Regards
Mr. Akain Karim

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
