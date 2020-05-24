Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5022C1E0335
	for <lists+linux-mtd@lfdr.de>; Sun, 24 May 2020 23:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1C9acxXgGp4VJ3ayA7W7+aIUJM610xh2oX4eYqsPEE=; b=suCVB2OyvGkr/f
	gniyOxYHZklUkDUnZUbEdFC3ub59zH10sCgJ5SFB+oQSRHNmzQwZs2hkQrY648Pt9J44Cc/yGzAmC
	4pdkJ6GaIgo867dVZrdAClMKUYy5p/vqCzmvjggHTe96ysjAuLE4QdBkolMfg1Xm0yAyNt4olSfEp
	ujkdmkeZcMljYW56K+gmbCwXTE5sGh+ipPZRg6q+bIOSQAPkU3/wcmmvbTl8fO9nIqIF4/JZrikEn
	SCyLy2DWuNInpY3/QzdulQufGISGy1kraI40VnyQin42uo3XiY4X5DgPe73iR+2lm+w7QNNwQncfr
	gK6uGRVhA3q75umtN+gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcyJM-0005RE-Q7; Sun, 24 May 2020 21:37:36 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcyJE-0005Qh-AZ
 for linux-mtd@lists.infradead.org; Sun, 24 May 2020 21:37:29 +0000
Received: by mail-qt1-x843.google.com with SMTP id a23so12631366qto.1
 for <linux-mtd@lists.infradead.org>; Sun, 24 May 2020 14:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cPqEORj2aZiuNCYLTIhgC5NbG10KitnTK1sIy1C9g2c=;
 b=ooosN1a92ljS60e3xUm07BGZAQKJb2vDWhcgWbUXxcz9NLmgoI538k1XN/Gcg9MQYs
 q+OY0C+nfcwGzlAocqMhca6Dj354Q+rTrNT0z+qYtZge1Pl918FOGSQirDJmhE2CFBnC
 nDjo0xfdhw1tvom9kw5FPcEaDObhSMw/dTVZqjCeOvSxI+f4U3Hn6omqPW5WN9G3veUZ
 UnHHj3VdO72WfQBxabgy4sJ8bv4qOT7ptGKrmGKYt/MKIX4j6dNq8o67tcYJibXqi50M
 3I+nRiRrmVDHmPoW84oo2S0SB9q89nsBKQPniVayrSlmnsIZmtwnorCJjcmVuty1XFWK
 +TPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cPqEORj2aZiuNCYLTIhgC5NbG10KitnTK1sIy1C9g2c=;
 b=BPVP351Zo+10yrqB/jaSntX6BO3MYh/Ui3ty/opTDLnAbUpERLQIkSgcChBbN6CP7K
 BBepeRShsX+xhUPwA4w5aNYDZ4yKp50hEtqOqsQMkWcbJTPETb5XA4O9IYUKPYBRiOTh
 Ohr2wkcyhdC/rz59qgM0hsG6T+5ngMJLoBUMVYI2OpCVsY4/mhFwZMkQpUKsuz5loeaO
 s4JlDHVpusb6WPz1YE+AElcj5/0For8GmziMK75YVhoCtI1eWxaAoJ9NVQuyecxO58r4
 wkrHCWt42kZd+R29fF3brjo/Lu/a3mEIQPVoyC2jhfU/YUWOGrMz7HJfl7Xz+dAUAB1S
 AdPQ==
X-Gm-Message-State: AOAM5314gvdjmB1HY+jstzLifAlSifJMfQTnVpJ9du860xM4TlBXl8cW
 TV54Rf4F6LatihQqA+c59EMGzcpNtFfTSta3saQ=
X-Google-Smtp-Source: ABdhPJxqlP2qq1jPoDsgGTNUm4DAUWSw35Y/t3k4WUAbjcUuoAeAqhL2ui+8oD+4Uup0FgVAbUvfI0es53TyZRXIVyI=
X-Received: by 2002:ac8:3f88:: with SMTP id d8mr1643183qtk.164.1590356244593; 
 Sun, 24 May 2020 14:37:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200509191431.15862-1-miquel.raynal@bootlin.com>
 <20200509191431.15862-18-miquel.raynal@bootlin.com>
In-Reply-To: <20200509191431.15862-18-miquel.raynal@bootlin.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 24 May 2020 23:37:13 +0200
Message-ID: <CAFLxGvzU2ESxZ74cve9w=CLBY2v95MMMJqzOFEmCAhVHYF5VvA@mail.gmail.com>
Subject: Re: [PATCH 17/17] mtd: rawnand: nandsim: Reorganize
 ns_cleanup_module()
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_143728_381829_93647947 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, dedekind@infradead.org,
 Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, May 9, 2020 at 9:19 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>         ns_debugfs_remove(ns);
> -       ns_free(ns);    /* Free nandsim private resources */
> -       nand_release(chip); /* Unregister driver */
> -       kfree(ns);        /* Free other structures */
> -       ns_free_lists();
> +       WARN_ON(mtd_device_unregister(nsmtd));
> +       ns_free(ns);
> +       kfree(erase_block_wear);
> +       nand_cleanup(chip);
> +       list_for_each_safe(pos, n, &grave_pages) {
> +               kfree(list_entry(pos, struct grave_page, list));
> +               list_del(pos);

Are you sure you can use pos after freeing the entry?
Smells like use after free.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
