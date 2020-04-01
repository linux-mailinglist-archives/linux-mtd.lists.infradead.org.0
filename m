Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3656E19AB15
	for <lists+linux-mtd@lfdr.de>; Wed,  1 Apr 2020 13:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PYwfd6SBEX89aLwrdwLR3HtDh76ZKzfRMW1zoZJcIkI=; b=pyUVZ9vuIlFzDv
	8I4zHUJdMaV/zgToVvYKyNfThKOzTTQ24LLGRvzonSfskxjRZzrYgBVxeH+uYHKb/XI+GjDJvedxf
	VwSZUAXDg9IRILrQ8z+CpAEYg9NTqeFmlfq62bS6u6fqNWiVCraPbQ/Gq88gmejN4/Oxy8hqlZFjW
	fElzB/ru1BMC+efEU37SFiLl4xjyCJtIGDVV6uBgiS5xNg1tZ/EjNhE/nCbtzZNkdiKcdYUjt5opa
	rWvnHmWkr6NVhKRVFDJ5Z2HjWW+4Pahk1nDJtwoO5ZdjF3wQButlnbct9qWLF7ed4hiCEKyph9kQ8
	AQ8HSkm5MtfeFt3v+ZEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJbrO-0002kJ-HQ; Wed, 01 Apr 2020 11:48:42 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJbrE-0002jS-LB
 for linux-mtd@lists.infradead.org; Wed, 01 Apr 2020 11:48:34 +0000
Received: by mail-il1-x143.google.com with SMTP id t11so22706309ils.1
 for <linux-mtd@lists.infradead.org>; Wed, 01 Apr 2020 04:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=Br2Y4bEXOK8iC3+5GjDZeQdunT7SVfJfpMueYZZbNCE=;
 b=WYxHU9VeQiwfWsewYu8BnssriLXuzbqrVFFd7JzDVdhUXNw5ri4JDuSbuuLJtBRT3Q
 MaQVdLFsDF9EIM9n8IqOGUDBe+WqIvRsXogFI8WBzUt6NOUnTGJbxRe0mc4rnP9x+BCm
 2B3U1TNHw2ZgdErxgQs1ohaUCySfGSk2CaJbBqIxRG5RnU/4tx9jKuTKd3jpodTylDAP
 2MljEDvMDrXWl1uMAJ6yHUVLxW+i+dMreG4FMZJ2mgOMLlYfd2HSO+PmUmtiRt0I1U2i
 HRbLDQyE6cWflEjCI25UkzahCNayxrPgODBx+synYYENNUYM4DchJHg31ST8xxXdtO2f
 NLCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=Br2Y4bEXOK8iC3+5GjDZeQdunT7SVfJfpMueYZZbNCE=;
 b=A8+HU3fZi2kLTV0ZsTza9GtrJYhphiCAbEX2r0ZH323zqgjwmJrntfYEfG3tzaEbzr
 OMwvXkAiPgyoVxmHsCJo8ik9SlAvB+QOBK34rld5aMhNxx2q3KSbnhB5Kbt9oLOoB3ak
 5V4RA9gyNfrF/6LQsXDJNZ7JO5Jxpf8GZk7pLHUmgJyNrTG2Uq87uHZ+2UWlZt60xu9N
 +hLxk+9SNrcxVdkC5GyPVsTcBBr8Vvb/u7TpSzDuxryc8ld/gRLR3cWD02XJgc/GKbu9
 jCPE+bSHiCWWI4YGOe+WmWBUz6KorLAvQh7b06q6iuwWLLceiTVSSw0cK0x6vb3197yB
 4zxQ==
X-Gm-Message-State: ANhLgQ3MG1L6gyzzjySCongAjUBhm88D1IjVW+Zxo3oeje4qbEphy6Wi
 LPsJfaid863hthmsUo3/sgi+bXqpScz38sgdp9U=
X-Google-Smtp-Source: ADFU+vs9GgMhPjMwqA1IH6C1U3qo1UVgsCtOr2p6rrsD+pIFSAgqmty75dD6YHdV3BpwgNdoWAq7X43WE+xtjZu+3jU=
X-Received: by 2002:a92:8f53:: with SMTP id j80mr21672024ild.171.1585741710380; 
 Wed, 01 Apr 2020 04:48:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:770a:0:0:0:0:0 with HTTP;
 Wed, 1 Apr 2020 04:48:29 -0700 (PDT)
From: "WORLD BANK /IMF CONSULTANT" <contactcc1000@gmail.com>
Date: Wed, 1 Apr 2020 12:48:29 +0100
Message-ID: <CAPWJ1ZvQFv55bUs=0_pLDGD+dHatzh3hA7zcvGCkKjTZisVrPA@mail.gmail.com>
Subject: (FUND PAYMENT NOTICE)ARE YOU STILL ALIVE
To: contactcc1000@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_044832_719476_C7EF61EF 
X-CRM114-Status: UNSURE (  -1.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [contactcc1000[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [contactcc1000[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
 0.0 ADVANCE_FEE_4_NEW      Appears to be advance fee fraud (Nigerian 419)
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
Reply-To: wbconsultant@mail2banker.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

(FUND PAYMENT NOTICE)ARE YOU STILL ALIVE




Attn:Sir/Madam.


Firstly, I wish to introduce myself as a sympathizer of your
situation. I am a consultant/Director of Statutory Department of Inter
Banks Credit Commission. My Department is affiliated to FSA, UN,WORLD
BANK, W.A.F. THE BACKGROUND OF THIS MESSAGE, It may interest is that
due to Account normalization of your banking details has been delayed
by restrictions imposed by the  International Monetary Fund(IMF) and
Financial Services Authority (UK) but this has been resolved.

As one of the outcomes of the  annual International Monetary Fund(IMF)
and World Bank (WB) summit held on 2nd-7th January 2020, it was
decided that IMF will monitor the payment of funds currently floating
in the international financial database. Consequently, we write to
notify you that you are among those that have a huge sum of money
credited in their names for transfer and is currently floating in the
international banking community. These funds originated from unpaid
contractor sum, inheritance/next of kin and lottery/abandoned sums
/consignments recovered at airports
for beneficiaries that originated from  Europe, Asia Plus Middle east,
American and Africa.


You are among the list of individuals and companies whose unpaid funds
have been approved for payment under the supervision of British
representative office of the International Monetary Fund.

YOUR FUND WAS BEING DIVERTED TO THE BANK ACCOUNT BELOW BEFORE IT WAS
STOPPED.DO CONFIRM IF YOU GAVE YOUR APPROVAL FOR THIS TRANSFER?

bank name:MONESE
Adress:85 great portland st. London, W1W 7LT
Sort code: 23-69-72
Iban:GB 0477007710 07572740
BIC/SWIFT:LHVBEE22
REF:M4122243
ACCOUNT NO: 07572740
NAME:SYLVIA ONOS COLE



You should endevour to indicate your previous  paying bank to make our
work a little bit easier ,if the above is not yours.


Be rest assured that your fund is safe and secure and must be released
to you with the re-confirmation of the following information below:



1. Full name
2. Phone and fax number
3. Address
4. Your age and current occupation.
5. scan and send a copy of your valid id.




You have to stop any further communication with any other person(s) or
office(s) to avoid any hitches in receiving your payment.



We anticipate your total compliance to this message immediately.

Yours Sincerely,


Abel Whittle.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
