Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0984B12E33B
	for <lists+linux-mtd@lfdr.de>; Thu,  2 Jan 2020 08:05:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9ZNkziE/uClFRwiUTXQERthZq2MDpCH7ZYLfvURtvSs=; b=BvwlxbuDjLMwop
	kRLoBldDfyCrZRBurCR7NvTt4fQVtGea5nnIhQ+QIc3dZL5AwIDSn7nDr0IzSLwbtL0VDm7t1zFWg
	qiaIFQ0K6Uyp/by8mvPvf8rrqgug8tfC59vVm7lHfFpcSOzqRnrG9TkqFU2P3K4DOEP/cvN4L5n9T
	HKv0AvtshgavR3sNRBHokX7Bq45pbSqOEOI9zXZoQwEOPt2OnNzvrgwh0+8YuXL9Lkh/ohndcAWht
	sfAeaFfCcMxS/tKfV3NWLWEDvMAb8sXs7SZAfNugSMTKvrIbIZ8QJqzxpIUAzDMZ2iPUJtr8E8E+1
	eRkv+6C6fm4LYer63uoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imuXy-0001qR-IS; Thu, 02 Jan 2020 07:05:30 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imuXp-0001pn-QB
 for linux-mtd@lists.infradead.org; Thu, 02 Jan 2020 07:05:23 +0000
Received: by mail-lf1-x144.google.com with SMTP id y19so29272038lfl.9
 for <linux-mtd@lists.infradead.org>; Wed, 01 Jan 2020 23:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=DK3+eW5DzORIn3P37jfI+LVuJR6LGq8WBycD0bO5TNg=;
 b=Gs9CRaoFIHAJbHysU7YIH1hYSPQeS7UW6646M0081+mQGgC7O5dWUTCDjqMOjXzuZW
 gYf7iN872jevmvVz7F7ecY0hc78ZxxBJ5kszNjwt3E6DGlWq2cPb6S4zqL5qVveXL2zV
 PUJsfrwavcuZSmAGOd2oK5eBYSieSm13gjkBJCSSzwwHKu+3H8lquzwJuJ+LjAUF+iN+
 TYzM1eleWSw/diqm/Hx3nsuYGN+wL590Pwafz7rky9be78WIFIzlPagz2GMrLihyk8RH
 vT2+9GKi5ej8AkhjetYbh+11AjcyJKEmElqkUB0gojpHeZLNeWSSgu1lQ7s8TcJG4zMD
 gGfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=DK3+eW5DzORIn3P37jfI+LVuJR6LGq8WBycD0bO5TNg=;
 b=LpKtpKQpymPaFrXJQokIl+A3fLH1u1jF7fwOzaPx9rpFLP+pB4spahZvePDyhaE2xt
 MYmuC1Ou5rRIU3rOyFVDIAFnqKJcRZo9oN6uO27J2b1UnxI1reebtgtJFrs4CMYwM3U7
 h1YONZ8ouCwlFbScUUu5rqFKUzkafcsd9XvyTUmbt1eiN4bayyQl0yYjNarz1m/LoAdo
 9VJy2lhKtu03RqcUQHHoa8fyj/oyLzS6JQCedJcXLhPrko9gnGyvo5M2W94ZLwozRCSx
 +1r/kQZla2Fzb1fxksh3HXQL0JqEdiGUdhgoliD6GOmmlfHrRzqpYtnUtbsIBkQ/UOFi
 tChw==
X-Gm-Message-State: APjAAAUEozTOId2F6RuYrY0K5NEyklmEJw3XxNF5Y6TzL8GVZC/MZd+E
 fX9bHh2QJoThF+WnMwsNwJPPl2xr/HQEhPHLE94=
X-Google-Smtp-Source: APXvYqzbCTFEhj+hAfCKtJn9LFwmTPtaVTsTbwNzQ2e9LyirBbh51RBgfq5bJRJqt+xMZ5nxyuSUJW2hAYF/hu5MSys=
X-Received: by 2002:a19:f619:: with SMTP id x25mr44882585lfe.146.1577948719719; 
 Wed, 01 Jan 2020 23:05:19 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6504:5f7:0:0:0:0 with HTTP; Wed, 1 Jan 2020 23:05:19
 -0800 (PST)
From: "Mr. Mark Bill" <johnson0paul8@gmail.com>
Date: Thu, 2 Jan 2020 08:05:19 +0100
Message-ID: <CAGT6c6s1hhHG5J5MCzbGofj+ubmBtKCoGLUYAnYVsMcXkCMumg@mail.gmail.com>
Subject: Thanks and wish to hera frpom you
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_230521_875397_383A0019 
X-CRM114-Status: UNSURE (  -2.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (johnson0paul8[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (johnson0paul8[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_HK_NAME_FM_MR_MRS    No description available.
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
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
Reply-To: markbill@planetmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello, I am Mark Bill from Chicago city and my wife is from Mexico,
after going through the internet i saw a lot about your country in
items of investment  i decided to search for someone who can help and
advice me on what my only son can invest in your country

Moreover, all i need is for my son to be happy before three months the
doctor gave me because i have cancer, i will like to know in which
area my son can invest with $4.2 million dollars in your country and i
will give you his whatsapp and will like you to see his face on video
call to build more trust in this my investment proposal

Thanks and wish to hear from you
Mark Bill

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
