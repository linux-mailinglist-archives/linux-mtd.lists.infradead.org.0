Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AE5147331
	for <lists+linux-mtd@lfdr.de>; Thu, 23 Jan 2020 22:35:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AffPd8asTqua2XZZlO5afrdoe0osPX838z2VFZM1H34=; b=Ds3KRtFYWsvkeN
	GWSADm8gNTCVKU543/MnOmcIAi/Gd1Ty5efxTwjfi54J1em9oW6LpXk+tO6r/CSN6g0j1JiO/qRHH
	KTRqF6+AvsMayyGDFmZhbrf0UoDPj0Np8+0k/O8+U6lIlhJxdIu1Lb9DZRm8Wo0fjUODlyHKfZpwO
	3GRmkw/F15P5Z8c+0dxa+8/D9O5EYHkUN5oLqgM4yLQXwemk/jJsPvy/ntXQIW5TYdljf9daVyZpN
	3pBM22uU1ddbrn3+FMgAU6yNqP1LUFgG3Uzhna52BReyHc+Q4XazjnZwh5Rx+oAZXNEFdOEG1BiRr
	qxF1mFV4g0jjsHQ51yhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuk8U-0000p1-JW; Thu, 23 Jan 2020 21:35:34 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuk8K-0000nx-Nn
 for linux-mtd@lists.infradead.org; Thu, 23 Jan 2020 21:35:26 +0000
Received: by mail-lf1-x141.google.com with SMTP id c23so2586812lfi.7
 for <linux-mtd@lists.infradead.org>; Thu, 23 Jan 2020 13:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5JEo2S95QV9RzdysiSqX6sLlLVR7bGOobEMqZB4SbLo=;
 b=LrAqB744pt/J8vqkIc85K0oHNitxTEwLxcSEUaIu43WhAUvXxzMBCno2LvKfhQXu0L
 QMnDBsNc3YXR2shrIDVs0cUYKafdaONjLDcBPiNDFxzTadHp5C4whl76dAFOre9YwVzU
 SY5P5FuMOtoNfri/t2DbZOWE9hkwyIdKhD+6dX4Frdz9995yNciwne+2Og90Q1HkEPiX
 NuHYw4ugQZx1YCWveavpWPHRqj1dsxgKFKB39MCg2ouG++cHgAe6Ch91a9z0efCDXaHQ
 2k7yiw90gujkm3E+HDqwQmF2Ea0YT5OQ0JDQimumZ7sEChjjoRThspQXQ+9ucSEyluzb
 +R3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5JEo2S95QV9RzdysiSqX6sLlLVR7bGOobEMqZB4SbLo=;
 b=eRElZ3WdyQoHIV8sSeZJnrm9onp21b3CcxsAwGYPuSfiXuQOuTi57xG8ToK1EcIT2E
 2Zw+mHEW1RKnBxDwI9o7iXlmgLnUOYEUT2d5l1rvNkYeOufCPP/tzeMQbpK5QnqN1/Fz
 Kfz70ym8hSus6Pc2VWY6kjegoo+eqMXAGkgq7aj9DmJ4JM8S/6pawwyLDFvxykE3Omxp
 HudLN1cUiWcCuq8m/Vipjw8BPYRaH4lfic7GaIwmVgAxUbRyn+HfkovaPlbSjrwjWyfl
 Uncjhum7A8uLrBrHWL456ULRWkZa9nFsHTPykbNp3bWjETzTdLB7oX/vAa+t9oWiGQfB
 AZsQ==
X-Gm-Message-State: APjAAAXfsijQQLkG3+nYnFWxXVbc52fFQ8ec7X5YzfryCUYU7IlzHJIV
 GR3E27UC+n2rqXyx3SEnFohFmfPYE6oBmaKjm8jZMA==
X-Google-Smtp-Source: APXvYqx0p8hvRbgBC26M9FVdzAYzLSri+D8u6aFzpfJCv9MmjQWjujEFU9JKr/o3Xmz+P0huC2zlxY0gHbxp1WC7mHE=
X-Received: by 2002:a19:c307:: with SMTP id t7mr5721872lff.166.1579815320173; 
 Thu, 23 Jan 2020 13:35:20 -0800 (PST)
MIME-Version: 1.0
References: <20200120223201.241390-1-ebiggers@kernel.org>
 <20200122230649.GC182745@gmail.com>
In-Reply-To: <20200122230649.GC182745@gmail.com>
From: Daniel Rosenberg <drosen@google.com>
Date: Thu, 23 Jan 2020 13:35:08 -0800
Message-ID: <CA+PiJmRBM-0J+LAckrvzg_bxEF+EmjwG5_PzgiWJ7SQu219p2g@mail.gmail.com>
Subject: Re: [PATCH v5 0/6] fscrypt preparations for encryption+casefolding
To: Eric Biggers <ebiggers@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_133524_799755_D2235BA0 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Gabriel Krisman Bertazi <krisman@collabora.com>,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-fscrypt@vger.kernel.org, linux-mtd@lists.infradead.org,
 Richard Weinberger <richard@nod.at>, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Jan 22, 2020 at 3:06 PM Eric Biggers <ebiggers@kernel.org> wrote:
>
> I've applied this series to fscrypt.git#master; however I'd still like Acked-bys
> from the UBIFS maintainers on the two UBIFS patches, as well as more
> Reviewed-bys from anyone interested.  If I don't hear anything from anyone, I
> might drop these to give more time, especially if there isn't an v5.5-rc8.
>
> - Eric

The patches look good to me. Thanks for the fixups.
-Daniel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
