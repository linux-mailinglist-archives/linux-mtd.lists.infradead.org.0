Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A99DB9B04
	for <lists+linux-mtd@lfdr.de>; Sat, 21 Sep 2019 02:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYaO7OoWjDoWdzwCAHl/cWnyjqYj+3fe0QIR3iyQNa0=; b=t02T7a4OurtNY3
	NKCR/+kb5ZtaIC5IkTDQ2iD1RRhWfeeJk2EshOMx7cWl6Jr4mXIT6OtjrtZKfgfmVCXmqtLGDY5Mu
	JZ35A3lx2zzvg190hZRm8UYRY4mZSWlzwGOqQp9EWODbLEFuVskin+kIbCvbCOaqFxOoZzarn/DIN
	NQJ3MYodEu1DZ+3cdYox3ZG/m1Msh3rEBQbQY1wdy1wkZp3rQOd7BJY3GE58f3TxnRXMpjkRg5aq5
	JooOzvn4LmLWz0GUBbSm515RZ9401o4gM2JwEARDy/y41zzpfzNCWtDb5YfcHxtGFLm123QD/z3l9
	aTvONyhV8SwnmeZVPhRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBT25-0003b2-Kq; Sat, 21 Sep 2019 00:13:49 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBT1y-0003ai-Rc
 for linux-mtd@lists.infradead.org; Sat, 21 Sep 2019 00:13:44 +0000
Received: by mail-io1-xd30.google.com with SMTP id q10so20153739iop.2
 for <linux-mtd@lists.infradead.org>; Fri, 20 Sep 2019 17:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=YukVsXas+TebfLvlUNTkLa6Bex7HaQ//yQjvsaRFhnE=;
 b=cs/jzLy461v3xqH86qLLLhQPbjW2cZCP2YW4jyrTFrR2zW8B3YXqBevqapBBG4rlMf
 fYqO7LrsLZZ+EEAki9qdBxLhX/rR37XRDE047Oob+GGxWvWslkfVcSYSdPH6rFc76vDl
 TpCdkokbqhbqVSUfKMg0/p0JH5mK4EiO9BFHBIgbXPNID48UofvLVuZ/aYlRYEPfOAZv
 GPZs7EKr+/7Z0GLFu2M6XyGATfvk8+lB7dpZR/plpIQzpl0qUvfmSTf+Ox10iyqwV89O
 M0FMC+pFpo5Q+qJseK+eBBhzY2g9IJieH9i+o9WSkc9FlrIArujjDlf2tr7EYkhwsF4Z
 x91w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=YukVsXas+TebfLvlUNTkLa6Bex7HaQ//yQjvsaRFhnE=;
 b=R0aa2lV5dof0NkdcgteoRWw+xhhluNzc2yOfQ3jcWy/eBoWZIbkBhZIiMTt0aFxs1D
 xTOPyggTYRVfhA7xRtHfCNadVe+bRsQ+YXCFGXRnuFPHA7E1gV0gvSbR5NcpZJrCP0Ox
 3NMunP/+JJaSwpn2kJJXD6AKEMQg3aCZLnP89go40ts+RgwhEQiH8K/G0fjG7L2pn45O
 drsXaw7z6DLy1QmQlONsz8pya6UliI5SMD27CcEMT15GTqV6U1APSU+HzLJWx/lOKYFl
 8f0sGdxmePxwKSFN0x3HAEsUWEnn7fXA15jOwEbBGhW2ZXWn3FEsxA6TU4UnQXcPl1B1
 48CA==
X-Gm-Message-State: APjAAAU90crHWjf3G5PsC+SVLdHwqKHi2ZBxydQp32XWd1V0XbN8/UNU
 AbcFVWWDXg/HALfKEmmv5PCoD/a7JlxHjI9W+UQ=
X-Google-Smtp-Source: APXvYqyBUd3Zaue6nznRcSVKURVegb88UeBN5Vz+r//onlAoc8mXUCXaflfPwbkLPLk3oRdjN774QEuBE6beedaL+i4=
X-Received: by 2002:a6b:6b06:: with SMTP id g6mr3879529ioc.72.1569024821810;
 Fri, 20 Sep 2019 17:13:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP; Fri, 20 Sep 2019 17:13:41
 -0700 (PDT)
In-Reply-To: <CAFLxGvwN1_BJ+3iB8fdKH9cJ_XEr_JvkToFAhxTzmK=FsixCbA@mail.gmail.com>
References: <CAA=hcWRK-ChXxovKqSLpDF+JO7DtjginYXY33O-xtEAq25MiuQ@mail.gmail.com>
 <20190920111010.AF800240014@gemini.denx.de>
 <CAFLxGvwN1_BJ+3iB8fdKH9cJ_XEr_JvkToFAhxTzmK=FsixCbA@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Sat, 21 Sep 2019 10:13:41 +1000
Message-ID: <CAA=hcWQ8rDkYz7wTtH0CuRW3xE2RAVNgYsZJOHd4jDRqLeiK=g@mail.gmail.com>
Subject: Re: Missing all ubi commands in mtd-utils
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_171342_920830_7180CDC7 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jupiter.hce[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d30 listed in]
 [list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Thanks Richard and all, indeed in mtd-utils-ubifs, my apology.

Kind regards,

- jupiter

On 9/21/19, Richard Weinberger <richard.weinberger@gmail.com> wrote:
> On Fri, Sep 20, 2019 at 1:10 PM Wolfgang Denk <wd@denx.de> wrote:
>> Probably "ubifs" is not set in your DISTRO_FEATURES ?
>
> Yocto splits mtd-utils into many sub-packages, ubi stuff is in
> mtd-utils-ubifs.
>
> --
> Thanks,
> //richard
>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
