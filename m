Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB58CB9340
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Sep 2019 16:39:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76hRWJFqlxc49VcccjUrlQmLuPKNULDurZhn5tPOOxY=; b=e1/0YZ63oZ3I6n
	osQ2tSRKWDxb1EvIMsQNywK+RHu8dzVBzF4UxU7bWA4ved9rp4fFTjSh+lllvCr3tvapg8vjY8oog
	TgG0V3huEkBwXrvdl1o5FcJtDN4G6pAgmEQNCEHi/NkhrxwtusW5EQskRjeS3cZ5sP4NGGJiHJ1Gl
	eeKM1sTtFYNoG1Wvv7Cxz4wf+tg/mTNLnaxCndvfudEL7yy8QarPC33NRzH4tTIpzANPhZpJ6tpOu
	QNUJN/dXW/Ngmls8FyZVFMhWOxal51KP7lDd/4Iw/7A41+TqjKnKhwT1KYql7WiMDI1Cc6XSvq5gg
	EuAHDcMgJLv/eWubc3JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBK3o-0001r5-Q2; Fri, 20 Sep 2019 14:39:00 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBK3i-0001qj-D4
 for linux-mtd@lists.infradead.org; Fri, 20 Sep 2019 14:38:55 +0000
Received: by mail-wm1-x344.google.com with SMTP id b24so2506153wmj.5
 for <linux-mtd@lists.infradead.org>; Fri, 20 Sep 2019 07:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QpV7/+yAaByU9Gkvq1/TvnZG5n90383ADAkpodmCXBA=;
 b=lj8TXUiuIegfzRLSf+IsVql/zQQi6GFZkqQDxgz95XHsiUsXg5DoeBHTX2r5lfEuVL
 99o/mHwpCF20bDx+1HOUdBYqPPcXQOkQQ9h1Syh2E2RcuD8hNK6Gd42Y9tIBKP1Y+PM3
 cFHd7RMsJTSbEAEja3SWep4tucmR+Jo3cdNLQhml7wo+yG5jTcXTWxRuM7h2Hz/vwCqt
 MGGHxUXcvar9xbktUx/GrnEC33yWbAM6/sZFmuwZWoVf/D4RZB+8cOS31kjekKOlHC3K
 VPOPcf6qjzRwp210fcvX0LdHM01TRUo8i3RIJJnORMEzFGTtcr5EJhXu5CC78nLaKvLt
 SoZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QpV7/+yAaByU9Gkvq1/TvnZG5n90383ADAkpodmCXBA=;
 b=mjOmviqY5nsMu/BvoJf4MD6XFc3GZH0Aqh2HOvIsmXbrbrZpZ9Emt9I11w0rk2KKXu
 D5v6qG1Ki6SBXzFg6XT81cf+WhxGDtd7fyfUGmlbmttiCn4YWBSlcyCme6UZg2wLMHK2
 SaGXV1qHwyp06zVj9ST5BjfvseooDob/cQkwmwQmTjeYSSO9vX+uFoUVpUqtGVKNqzZK
 HTvkXTyqg2JaJIXvMPp6IahcpKtplunMYALXnzsHO03k0wCDClp3mv5goZO2HmyF9DwS
 ceMsNP/njCQRBABM1n2QvDFnR4bQFWsGDxh/wRHE5L+79M/EGFCYPJ9kQAGK6V5a9233
 8ptA==
X-Gm-Message-State: APjAAAVlfhxafG71LKTZ5j8WaXexuSqJTMTiW3Z4EnQmcKam3qPdfIKO
 pQTo2rL/bADXGYi+76/UqeQd4CyYLVIMsL80suI=
X-Google-Smtp-Source: APXvYqw0EraUFYMhhNXRZxVr3iyCe1OeR0Iuge+9+HdkT5FN0Vn52o2HVYZsNRrV6bRmbu8jYWhELT7ZMhNGnb7ayFg=
X-Received: by 2002:a05:600c:24d1:: with SMTP id
 17mr3773509wmu.104.1568990332904; 
 Fri, 20 Sep 2019 07:38:52 -0700 (PDT)
MIME-Version: 1.0
References: <1568962478-126260-1-git-send-email-nixiaoming@huawei.com>
 <20190920114336.GM1131@ZenIV.linux.org.uk>
 <206f8d57-dad9-26c3-6bf6-1d000f5698d4@huawei.com>
 <20190920124532.GN1131@ZenIV.linux.org.uk>
 <20190920125442.GA20754@ZenIV.linux.org.uk>
 <eb679ad2-4020-951c-e4d1-60cb059a5ca8@huawei.com>
In-Reply-To: <eb679ad2-4020-951c-e4d1-60cb059a5ca8@huawei.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Fri, 20 Sep 2019 16:38:39 +0200
Message-ID: <CAFLxGvzeLTVfA17DMEi5tSkzkUgJncjX5oHWe207x7bfUtugtw@mail.gmail.com>
Subject: Re: [PATCH] jffs2:freely allocate memory when parameters are invalid
To: Xiaoming Ni <nixiaoming@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_073854_471122_5E7765FC 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, houtao1@huawei.com,
 LKML <linux-kernel@vger.kernel.org>, daniel.santos@pobox.com,
 linux-mtd@lists.infradead.org, Al Viro <viro@zeniv.linux.org.uk>,
 dilinger@queued.net, David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 4:14 PM Xiaoming Ni <nixiaoming@huawei.com> wrote:
> I still think this is easier to understand:
>  Free the memory allocated by the current function in the failed branch

Please note that jffs2 is in "odd fixes only" maintenance mode.
Therefore patches like this cannot be processed.

On my never ending review queue are some other jffs2 patches which
seem to address
real problems. These go first.

I see that many patches come form Huawai, maybe one of you can help
maintaining jffs2?
Reviews, tests, etc.. are very welcome!

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
