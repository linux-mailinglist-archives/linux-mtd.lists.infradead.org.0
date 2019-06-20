Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0204DAD5
	for <lists+linux-mtd@lfdr.de>; Thu, 20 Jun 2019 21:57:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCCIzR6BWCNQ+WICgu3lXa+0Q5hwAXdVzMakJpowOCU=; b=Y7NmrY19tVWLt0
	sIoYXj9J+SJZ8bRE83uNhwvRdlr1dnkYlXag3TtffcX9pGubyZ5HriTjYCm4fJovPg44uEdjKq3mf
	/njxPPome1UQQN2+haMyEwMg6qXD2tDDUw8bK06p3f8B1XAEpSDBSNy7BRCdWxKGi5H/45FsznDZS
	uYUQAVL3l1T1xkwWk9CfxrIhc05tEHKzsS90sNuGLTf5d1XnuS3TGKHxxqu7axys7Z0NCccrXZCxF
	TOtbGxo7wUuGDUXq+kpHlzo9Eq9yhMOiSEdWoHW5b0GJ4FFBh48mgNWT4vr4M/sVpDkfiIDxyS3/N
	TKDNgiofyKvo5OQmqJYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he3BX-0008QL-70; Thu, 20 Jun 2019 19:57:27 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he3BM-0008PM-27
 for linux-mtd@lists.infradead.org; Thu, 20 Jun 2019 19:57:17 +0000
Received: by mail-pg1-x542.google.com with SMTP id y72so2115347pgd.8
 for <linux-mtd@lists.infradead.org>; Thu, 20 Jun 2019 12:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s0dGUTL6eh2cw6ZjVrg36nefIFWQ8LGFInVMiQ8EtQo=;
 b=kth8MnUpjxyuCl9fAHan9Zr1btXnsrS+SXmfVZD6ide3lk4u8eIs3n/RAAPUA8Z69y
 yru8kEG3F4D99rdy9VTgkLr4G9S5TJn0iG9tXFPoK5cdux9yKfyH/ebl5pZrdZ3pG5U2
 erboCyCjhbRBtMSYG4yCmEM8EUTUmM9F0+b7ZG8qTOTTesY2zD7/4VHq7pn0A2p7SFVu
 f1/+A/RP6+PZUzRJCXhTTIQqJWEtVfeBtRGpH/oTpEEiq8R786PYepVmyBbk8+Szo64J
 jKHRObHwAotf01Dl4oRyjBCwvK8yXJmO40drgi8v866r4mf37GMhu8koCOarJU64u11F
 6wJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s0dGUTL6eh2cw6ZjVrg36nefIFWQ8LGFInVMiQ8EtQo=;
 b=Rf9rJdmzSs0O3Knc91imOnT2aIrRFux656AzuFhjHrGwjRsvh2mHoOpFSDg7K03Jxp
 tyf41cwfg8lQF+5wsFDMeNO3PxQqCRZgLXsxgp0Rxl/O2EfZvh1MM8HYWDhI/qnN5ciW
 t53JYVLg5wOke+I6nce+9ZemJaaberRG8aeqlKVFW/FUyf0oMQS1kH1UQFv963GPd+8+
 7Kc7EgmauGY7syjTAQ5KRF2Wm2J8BDQzU75kJ7BDsdTqObxNUKdfXrDnDwsmQfvz/MZC
 Ei7eLIt6UImb+cQxn60Sq/47hP3KDdQArlZRge0sJOoHnMkrJ9DZn2FI2Is1tVaTlUDt
 oRmg==
X-Gm-Message-State: APjAAAV8VfmIBaVlpXmffg6alan4unGxoyOf3X7aJ2HRIrrgUchVyztf
 lWgalQHWam9oiUmzNLu9xQl+XcTBCeEzi8Ew3B17+Q==
X-Google-Smtp-Source: APXvYqzl/20aaRBmRoGXt3kETQ7Qhl+p14lzrG0EYxUeYrU0503TNSYKL4okd2K0mx/+BzbCHSRf44rXbKeGSuwULlo=
X-Received: by 2002:a62:2c8e:: with SMTP id s136mr88622095pfs.3.1561060629486; 
 Thu, 20 Jun 2019 12:57:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190620155505.27036-1-natechancellor@gmail.com>
In-Reply-To: <20190620155505.27036-1-natechancellor@gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 20 Jun 2019 12:56:58 -0700
Message-ID: <CAKwvOdk7ZTcWEXPTBASPzk1SjOdnONawtQJkR-jU=REFSo1hVQ@mail.gmail.com>
Subject: Re: [PATCH] mtd: mtd-abi: Don't use C++ comments
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_125716_105595_44184FA4 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Richard Weinberger <richard@nod.at>, LKML <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 8:55 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> When compiled standalone after commit b91976b7c0e3 ("kbuild:
> compile-test UAPI headers to ensure they are self-contained"),
> a warning about the C++ comments appears:
>
>   In file included from usr/include/mtd/mtd-user.hdrtest.c:1:
>   In file included from ./usr/include/mtd/mtd-user.h:25:
>   ./usr/include/mtd/mtd-abi.h:116:28: warning: // comments are not
>   allowed in this language [-Wcomment]
>   #define MTD_NANDECC_OFF         0       // Switch off ECC (Not recommended)
>                                           ^
>   1 warning generated.
>
> Replace them with standard C comments so this warning no longer occurs.

Should there be a fixes by tag?
-- 
Thanks,
~Nick Desaulniers

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
