Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0407AE1CD0
	for <lists+linux-mtd@lfdr.de>; Wed, 23 Oct 2019 15:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jES0kU9xIQn3n/2YmzTzsf48KgMdu7DW42HFQUnDBTE=; b=afJy/wPJ67sFC8
	ajvOoevRGrfIU3UPRXftlWuCH4yTe0/uUpgecNvnwx6dJyfSp1M6LQVU3GrwMyTLMgR51PyIDSWr0
	KKwDYw+TUnOQYM+op5LwIxVl1IcYcky1JtXn1/cKHHSuZg6m7on86CR5MlmtSHYbiOp2CPdUBWCp2
	3t5O8A2AnbxOIKq5Hr4LVYe7qpLuivImebkpZ8gHsflI7f6cyG6nF8a0GlOeqiv1ihURuzlbexeOk
	9zNLUX0Uzzb0/SMWCHrE9AvnY41AklclQvWoB/eJMLKnNfASeUSbs2aRvHF7aJq4A3zJ1aSxz3At9
	w9qBvnDqMOq2js576QeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGoI-0006Jn-To; Wed, 23 Oct 2019 13:36:22 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGo5-0006HI-WA
 for linux-mtd@lists.infradead.org; Wed, 23 Oct 2019 13:36:12 +0000
Received: by mail-wm1-x341.google.com with SMTP id q13so11226446wmj.0
 for <linux-mtd@lists.infradead.org>; Wed, 23 Oct 2019 06:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=dVgB2gHwyu9BrwAHrTVrhxxTLMnU+GjkCtVmW3QXNgU=;
 b=Zp1rNYOb7wPsdMPdMbYe//+9NYjGitazC3K4MBrZR7qVyf3SurlVK/iVTX8rXrD1MV
 duJiT6vf8/dVRyCoGAADOWO6mdvdO7LXMGSTBsL1aPHRptzHVSr6EVhNUNTbTuXzEcJM
 CBCb+Jmcnci8Xj7Z+C2D9+RBLni3QkUE+aLyNfm640DulCjNSyCQlNWPphsu43/xiaCJ
 jGtO0Rf565kxFLQCtlztfZCV3214dAbiLSZKIvSf0BlByQ/4iOlt67agx4AGUfiCjZMI
 RoTZ6xCVKLtvHbzydaTmcuGrVnWq27zH7gygGQ2YGfnHqhgxkVmC2lGKxGSiWzVcr6KU
 QN9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=dVgB2gHwyu9BrwAHrTVrhxxTLMnU+GjkCtVmW3QXNgU=;
 b=Rl3cwp0WvVk+IxXcIMOYcehPP1o6hCvLUdRaPmucSzIuRrqoKWqPjcm7eeWW03hL52
 dsvQoeMwNzihNSExgGqMNYRFslVCWxK+oTDiJftLnPM9Dx4gZyXt8Ud3wufceOkDir5y
 ZUzeLuC2VzAN829yXLlryBwNJjhYb8Yv+3i2RX0/LZj+nedd9UYUfS5HrKzLoSCcreVt
 dfj8pSPFi4wA153zbuUfJr6p7/nHpmbvQku3SYYQwt5C2KRpApRIlu+AMzRghFP9wkwJ
 zw/cHi74RBnCWoie3cx6EYPA5YTYawFayeM78t50gkBia2mXD/9L8VtC0ew5B8wrQoR7
 uMug==
X-Gm-Message-State: APjAAAWWpcmRhHC+sXjLHU/MZ6A2tDvUG6mSRoqdol2swsYpkj5aSMdC
 zS14rLrwchLx68VsiflX0Alc+2vx+EkfaVlBLM0=
X-Google-Smtp-Source: APXvYqzu60dP5ZzLHoNcR4C1Z90wK3ujHk4eIk60CblS8nkYpWGmu8JElmh7udCx+t1YVbQaCRFZhRaASS5NgAdsuk0=
X-Received: by 2002:a7b:ce84:: with SMTP id q4mr4860246wmj.36.1571837768313;
 Wed, 23 Oct 2019 06:36:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:400a:0:0:0:0:0 with HTTP; Wed, 23 Oct 2019 06:36:07
 -0700 (PDT)
From: "Mrs. Lisa" <helpdesk.eit.ac.nz@gmail.com>
Date: Wed, 23 Oct 2019 06:36:07 -0700
Message-ID: <CAK7Er8aKyL3H-yzE3WwHqgdy-pvjcQoKmcraD43WMg3fDh48xQ@mail.gmail.com>
Subject: Mrs. Lisa Charity Donation
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_063610_030542_9C3F241B 
X-CRM114-Status: UNSURE (  -1.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (helpdesk.eit.ac.nz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (mrs.lisarobinson746[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 T_HK_NAME_FM_MR_MRS    No description available.
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
Reply-To: mrs.lisarobinson746@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

-- 
I am Lisa Robinson, you have a donation of $1,200,000.00 USD. Contact
me now for more information.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
