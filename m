Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D044416A357
	for <lists+linux-mtd@lfdr.de>; Mon, 24 Feb 2020 11:00:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hvZ7JxRRRB9exp41nVE0lEm6k0VtNuQhbO0TQ1m8F9E=; b=kPVorOM69GGpl4
	TwuvHkLHZEZMJ1fo3F8R2IMH0P+475kOTwXebdsdW+dPTq1zx4EhmoT8BXf8Ms0DKL1FqVgI1oPSa
	VhYWcMrHxNIY2QFDW4Txtpo/iD7MNJrMUTonCLyH6IfB7yo09ME85iWJ4jqzEtRRsvOuzwFdtQxho
	/CR1Tvi4Z9PKPk/TCpv36YJBLMCWrE2ZHpiFJzsYcr/TwXecOZ0vN4iw5Z9+8tIH2qpVtdzW909Nu
	mePpgARM9dwtJ7gmQrzWE/lVinBoVjVXnq9O+bj9lrAEFR4lV4gAJ+0NlLrLt5KRDOcEITmV+h1eC
	4PFNsBjj09QcRpK0USmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6AX7-0005dP-Ey; Mon, 24 Feb 2020 10:00:13 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6AWo-0005cv-RA
 for linux-mtd@lists.infradead.org; Mon, 24 Feb 2020 09:59:56 +0000
Received: by mail-ua1-x942.google.com with SMTP id g13so2996040uab.7
 for <linux-mtd@lists.infradead.org>; Mon, 24 Feb 2020 01:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=AmWO2CXU5DL6vZu9aIfT0OhpFKvoC0rPyh0VmFLRcSI=;
 b=tL8RVElXJeztDZGyA9lXPqramBQBS2LzFitRxGECiU6D/06vY10Etk5PoQX+S69tfQ
 THwdI76G53CyAxrZe9IW34USngXatoZ6ZICdv4p3FbIFRs2eog/b7FTAu0r5GyUEE2xR
 NfIHWCWxukpxM6j3w1GunBaXyxovmjNzth9DvO59gcmiW/7PIVz9CvUE9kD0gzOiZHGw
 u0yfC2tvBGHRayroQjYHp2lFwh1TDtvWnnwv8oQoP/8o1IMhTAD/Cu531uGUagE8nRPZ
 vpf+a5u+jYcAzY/cav0ZsIH5nWwqT+5mefCm1iQAIAMJNDPjkY03dkG3ZL40t9K/mrlN
 kXhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=AmWO2CXU5DL6vZu9aIfT0OhpFKvoC0rPyh0VmFLRcSI=;
 b=LfES2B0EgsNGy0zHWH7wTMuK3ayO0RIvDr7dtAR+NpyzmRZfN2+KwlzYnv7Ll7WPnb
 ajRiadXyFUtlIVgG79D3SUJ4iR7X45N3VdjP2xJjYFYTp/dwdJzOxYhOtIoaZ3QSPbtS
 cYE30QwGgUuXib5EeMzyC5puBJLx/eYrik40iQ6JWWvk74+2ZwNrkrJCs3AWSRvY3Gw+
 KJjZWnsJ7mHAn4PNug2FJfIGucT4Ea4/hEs5ofJe2uS59uUy4A0DVIZwglJCTpoEg1op
 bVhqe3qvCvP4c09aV4VHtOZcZ8UmAE3U6dZxWgFNmLnUzTg+1y983+dSPW9+ca0c9RAG
 5mkQ==
X-Gm-Message-State: APjAAAXApM37MKpHgd0S6p3ZlvRcC7goRjk9AVdiDJLsvA/PwS29Qe24
 RK6LQyQYwkK/jxJp8s76d7wd23VTfi429xeoA38=
X-Google-Smtp-Source: APXvYqywj8WNnwD2MhWOoNL9KF23Z6u0E5rG3AsnfPaVMiMAPipSxEAfmzxOn9mqdrSaxryo37xtW7uXdJUkBPnzyCc=
X-Received: by 2002:ab0:1c51:: with SMTP id o17mr25124852uaj.63.1582538392920; 
 Mon, 24 Feb 2020 01:59:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:238b:0:0:0:0:0 with HTTP; Mon, 24 Feb 2020 01:59:52
 -0800 (PST)
From: Tracy William <captraymondjpierce@gmail.com>
Date: Mon, 24 Feb 2020 10:59:52 +0100
Message-ID: <CAAcDt7H847bhKB5LMAukVOu-Xxey=5JHOhrkNFJ0uK8Qz7-qNg@mail.gmail.com>
Subject: From Dr Tracy William
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_015954_888425_BCBFB152 
X-CRM114-Status: UNSURE (  -3.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [tracymedicinemed3[at]yahoo.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [captraymondjpierce[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: tracymedicinemed3@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

-- 
Hello Dear,
how are you doing.
Its my pleasure to contact you for a long term relationship.
I was just surfing through the Internet when i found your email address.
I want to make a new and special friend.
Lets keep in touch and get to know more about each other and see what
happens in future.

My name is Tracy William,I am from the United States of America,but
presently live and work in England.
Pls reply to my personal email(tracymedicinemed3@yahoo.com)
I will send my details and pictures as soon as i hear from you
bye
Tracy

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
