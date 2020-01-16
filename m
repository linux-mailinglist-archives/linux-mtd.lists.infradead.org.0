Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CA513FCDE
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 00:19:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJY57j9QH0YsyvzYL0RNpgL+GPdm55c6OV/cp7eXbCg=; b=EUP7J75sJGmdX9
	hHSfBbxvqpvgOd+2KBmocbBqvzzoiui+JfR/qKja+d+GQBaEsChjewKaUD4NFR/OTIEujSh2KjtC/
	bhCxZwHFigI4c6ivCd1M1Bjy8KbkAlsUKtWUc4RcqeLQbTou+EHacwXZnqURtilEY12zIsc6aAoYO
	g4zW2605a3kR0LqpErEJBx3t9ZbUn0HhYsgUEQEzR2Ikz6EdnAiOPC72OQn6qHwsasC38HtSF78V1
	p9qxFQKGQPMeENpqWub/Sr3qsP4yj5GRzrbodz5Mvr5MI6dYTr/siMxUz9WrDPygXRjWZ7RRhg1fg
	dGmzQOR3Z3CEyzJrdmWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isEQM-0004yJ-8G; Thu, 16 Jan 2020 23:19:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isEQB-0004xU-7Q
 for linux-mtd@lists.infradead.org; Thu, 16 Jan 2020 23:19:28 +0000
Received: by mail-wm1-x344.google.com with SMTP id f129so5637540wmf.2
 for <linux-mtd@lists.infradead.org>; Thu, 16 Jan 2020 15:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=urnnO5Ga3ZxYsNA1To0e/dDpxaBchMRSW/zBiTdJxPw=;
 b=ryWBTFDfWmPfxbRu94HV6DwR42ZHcIGLPqK/kdlax4B+qcIy3//TD3dfcK1WcnorBg
 8eqPzUvmk1KAPK1sb9QXCO4TjGWHCDeUvxmmnUdJWnyZp2WdPuM2ZxqEZRLui920bDXm
 TLW0srn+7XdoYYp3hM9mAwMyPZk9JCk4oYdkuNGEdDXJSgbKKTR1xTApVacsxBW+6rMJ
 Jl4eed0D63b5Qg9nI4ovVbXBZz1uqydhZWN0fXu05OrAUysCXmelxt3bW48K1nSd/i6f
 B0bZq7/gW0lJpLv5Vp+ZWX5Hty6EgWbMTW55nT7phFLzSLWk7LTz8ZqRKPjFoIuowToS
 J+pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=urnnO5Ga3ZxYsNA1To0e/dDpxaBchMRSW/zBiTdJxPw=;
 b=HOrMm9kln7fAUd6kzo2MkmzB1m6K8ddUwJeo7drvCWg6DUw6rOLDjDAfAFY+DDsCFk
 9VB4CDX0qdJjx77B2NreGtUYwr7SqFU45DGc1o5Vq+kJytmo2lIyLdQ8oN/S2tTQa7MI
 MUtHXqu3Wox5TSBs2ijg414eTx5MpxFBRL7wZBg45ZciEE5436cSd6SFC1JTRge0dHWu
 3/HwfPvkBOBU6IXnRdSYEjRVY7mcJee8op7EYxSVSeASOwdwLvfLEBnmtsfhm+dJ03Lw
 KWOpSRBvfy+GYC1wBkLnjqWBZtDZtXBW3ZW4ONWoQ+xp0vezvrOkKg50BACwLS7mII6N
 nmBw==
X-Gm-Message-State: APjAAAXqUpC0qEecmkMGobaEvRFf2g+B9Hvv+OO0nTBcGR+EdJJdQRIr
 tsmNOCHXFl1at3A6i/H7E6vyhx1nodgop2TZry0=
X-Google-Smtp-Source: APXvYqxm+99uu+UVcbq3aIyDtJVpgnwvCL2aNcT41m4dRDBhkjmoO3cpirmmq/b8nplB1Aju/mDNsJmCEBUJmQgjPWQ=
X-Received: by 2002:a7b:c949:: with SMTP id i9mr1426694wml.131.1579216765789; 
 Thu, 16 Jan 2020 15:19:25 -0800 (PST)
MIME-Version: 1.0
References: <20191130094800.141345-1-houtao1@huawei.com>
In-Reply-To: <20191130094800.141345-1-houtao1@huawei.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Fri, 17 Jan 2020 00:19:14 +0100
Message-ID: <CAFLxGvykNXqd1c40WyrDCtLpZtoGA6BnBFs8XCQ_g7wWK+xf0g@mail.gmail.com>
Subject: Re: [PATCH 1/2] ubi: check the presence of volume before call
 ubi_fastmap_destroy_checkmap()
To: Hou Tao <houtao1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_151927_298873_6A9BA245 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Artem Bityutskiy <dedekind1@gmail.com>, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, Nov 30, 2019 at 10:41 AM Hou Tao <houtao1@huawei.com> wrote:
>
> Else there may be oops when fastmap is enabled and init_volumes() fails.
>
> Signed-off-by: Hou Tao <houtao1@huawei.com>
> ---
>  drivers/mtd/ubi/vtbl.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied. :-)

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
