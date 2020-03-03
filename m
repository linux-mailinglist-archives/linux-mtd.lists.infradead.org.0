Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1A6177E41
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Mar 2020 19:08:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W8ZzsbO6xhoiFGDYVHVvj+fKL4j5Sh7falLsAFZMZRw=; b=ONOEQPYPFRML5v
	VIYBuoOojHK3AQQN0VKR2cALpo49oSG16U7SFtCXLAwv1dI2ZXBce2YhpCGeYRiwhEBgSiQ3/uquV
	Oexgtc9WG28LAjVcJyHJXlmZbRgXVDr647SPHS6odrqxHpNbmnF8L4ZpgqlXP1VT0tt6lJ8jASfst
	NTxE8plviG0vjG1Z5HE+XmALcJIXn7vK0QARcn4XH6KBsHoU2zuUaSUYFiZ5pnqJZXNOmU33MZXuu
	7gRPub+rRP88oZyKR81ACYF/TA1HTupWD6LHQyv1TyqXDAxOmBbreFF2PzIkPp1PcwiadDxAj25YE
	TcBvy20hIaBoANwdKBqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ByJ-0003XP-Hy; Tue, 03 Mar 2020 18:08:47 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ByC-0003Wz-5n
 for linux-mtd@lists.infradead.org; Tue, 03 Mar 2020 18:08:41 +0000
Received: by mail-io1-xd42.google.com with SMTP id c17so4660075ioc.4
 for <linux-mtd@lists.infradead.org>; Tue, 03 Mar 2020 10:08:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=42VRx4KA+cD1ZZnhz/34yl/kjJSKnU+ahvHX6e7S6BM=;
 b=rsjB5ruwM+js1rgLS/2Ql0jQDE8A8Fmm63WcN6KMCbH/6gZOZE8S7PIFVaEV7JuasD
 jbHdOYNBD2cbSpFDAm18SnSOoD2/409c2pZBBjhx60jkLPhygD24Pia76+3dWkjP+NG8
 I0hejckebuyfEw9Z9S7UYcYdxw9V2RHUmfQUNIrvLFkrCqVs4xS8Hf4ZZaGtScisQNW/
 Y7S7KeHo4B4FkIQQT2rA2JGnHkgQnml+0LyNOfeZykJ25cxS7XemUaJcxOr14yp+1z3e
 KoxkDrz/Heux7w+8FeWO3tQ9pQ5UWO0vRIAPTM9QqaM9hYte+TSo0F5zQXOORR1WioEp
 aBnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=42VRx4KA+cD1ZZnhz/34yl/kjJSKnU+ahvHX6e7S6BM=;
 b=nkZD9u24f1jMQz7AM6JIj+anugmbWlXD/w/y2uNd4JcXT4PEsFWP8OYTpAQCH3KDgy
 4WGGIzFZ1EFepA3dyVfTA/Bcx6RwcpCogKfbCnA9tfrbBrnkQGri3s9gqtlKDDggxzVS
 RiSqpdrFFh76sU3JkCRm8J2gRx+5JPsyfS1MIDdobzb2aeb2c9JwTjjiz2pG/Cb+JuKH
 0IRW70Vw41SZlYjnUKT6fEa6FVATlGoE2vXB9vDSMIhwPrsxb4vd/sumI1FOKXU5rLi+
 kuAqA/YS1kFFcI8XbbOYSZTgwIjoR8qSu4y/C8vgzAXD3tseNpzrXAQbNgu9DmjODv30
 cC6Q==
X-Gm-Message-State: ANhLgQ1Bf+MruIb61Yq8tbEzzqMfceXhnLo9Qqd4UUK1sbdiSFJGAq+g
 AZ4GrPLRz5V3vvLB0Sc8kc5qVrw6GHug8TDopuI=
X-Google-Smtp-Source: ADFU+vvxDReu20JmXsmcA++rxbuMUk4M7I8JHwZHOJ3DH6rswr2QKxfwaz7lPOHxRBO1Pnh615b/JUyiMjCIiiS7l5w=
X-Received: by 2002:a6b:e013:: with SMTP id z19mr5005031iog.103.1583258919277; 
 Tue, 03 Mar 2020 10:08:39 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a02:9f04:0:0:0:0:0 with HTTP;
 Tue, 3 Mar 2020 10:08:38 -0800 (PST)
From: DR CHALLY NOAH <mayorabrahamedge404@gmail.com>
Date: Tue, 3 Mar 2020 19:08:38 +0100
Message-ID: <CALqVJWdV=8A8yB0OsiEZTWuv0O6WSQU5jLrCGAEEFvE9r_yAsg@mail.gmail.com>
Subject: Hello Dear
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_100840_217451_F650A751 
X-CRM114-Status: UNSURE (  -1.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mayorabrahamedge404[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [mayorabrahamedge404[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.6 MONEY_FRAUD_3          Lots of money and several fraud phrases
 0.6 ADVANCE_FEE_2_NEW_MONEY Advance Fee fraud and lots of money
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
Reply-To: dr.challynoah@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello Dear,
What Have Kept You Waiting To Claim Your $600,000.00 USD Compensation Award?
This said fund was issued out by the UNITED NATIONS To compensate
you.Please If You Have Not Claim Your Fund (Award),Kindly contact me
at   DR.CHALLYNOAH@GMAIL.COM   for further details on how to proceed your
fund (award)release to you or better still reply back Immediately You
Receive This Information For An Urgent Confirmation And Release Of Your
Fund To You Without Delays, as your email was listed among those to be
compensated this year.Congratulations..
Best Regards,
Dr Chally Noah.
Minister Of Finance On Foreign Remittance:

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
