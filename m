Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D73B5C1E4
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jul 2019 19:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndsKCSTZslbvzrJf25uJm5MAr4M64r8cxGZeCltDq7I=; b=qj9XFrnLpcOP4z
	VDvldFRpc1fxVNBhsO29XNzYauTnyXc/eosa0BYyOsZPTUeKX0dOXhRq5vHU7Q6EgGrodCPP0BVU8
	3Kb7D5YQRnS8HXmWbhwiLE1lqfIhbyK3+yupghaU9x11FlNsXJ46nfbF+O8U59B9qCM3SRgktReBj
	VIghAsVtmXK1p8BGn4WCKMQxfnpXok4AuaNkEK7lWSKD1Cy5R+iJTU5FgjOgRzYc3fFnXYUxkakCu
	GPi6AXo4cEmSWL4dPiOFFRECVg1eyjAsr8nrPoV2Ma8nEs7LUNhcldBUEOGnQ2aseoLXxE4LxSpen
	0wODKq5ACBgCMMgoHEJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhzzH-00049q-1q; Mon, 01 Jul 2019 17:21:07 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhzz8-00048z-WA
 for linux-mtd@lists.infradead.org; Mon, 01 Jul 2019 17:21:00 +0000
Received: by mail-wm1-x343.google.com with SMTP id z23so328492wma.4
 for <linux-mtd@lists.infradead.org>; Mon, 01 Jul 2019 10:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=plexistor-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RMtO9zTMwULPwpFiTkeooNGzR9zKo/UB7YgL+t4fgzA=;
 b=1wUdmopYsOTGEBPctCCQBJNp/Weny3U0OdMAgIX7XMpDLNjX7yi2BQKVOeIOZfgf1b
 I2dQPvs1YcMd4MKfGasxoR1vUF57n1uWvGfOwCBn+dFFXqdtzk7+nDTMfgxaIC1cMqAd
 CyXSD5wWJrsSE7f66iNNQpS8suPAgj9SNlBFoRgvaYPLl2O9hulyvjxbO8s6Guhj4y1S
 Nf6nnLqhsslQUJQ8lQjHCR002MedRLPvKNFje/NywIlwBVxr1dbYLS/Ag6d45MoLEFLA
 TB43Jl9ECXn6C3ClznsgSlBckfDR8AQM1se/327D0FreZlmY9S9DkHpcHai8gVFUiAbk
 jAnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RMtO9zTMwULPwpFiTkeooNGzR9zKo/UB7YgL+t4fgzA=;
 b=rkzd2/tWcosxEPk1PpTavdZivnGul6U7P2jKFGmzHvzWXTPHegiwVN+MfaZ6qcPWv1
 g0wOKbDqvpX8rE/SGKETaMVQndekdosMhb+PeYgIyKp/hV0gdCa3cZJXLJkmsCnKIrIS
 MfwpqhOzNfsYlSH851vHTtwMSP8u7Ixn2zRL5vnkiMwIyfnKgtmJBKyr/hiCra0wmhBz
 Pf+gxW+8DtlIhlcFRfgnYhn1eQkoUStcbzDsyX8trnRIfoBJcpyv8Qt8OMK87SrDNCcz
 BD99CLnxjR0/HlHLfdQ1ogleSyer1xGuB8SyunzelyAK/NO6UE8GK9Gh0AuOHSrOxwoy
 3ShQ==
X-Gm-Message-State: APjAAAV6m1zZrUJ0ms5ZFowQTm7SZkeFC9I2WR+sw6ZfPVa38Y9+D3n1
 VZxTD/P6FA799D8nCRyjKnTDww==
X-Google-Smtp-Source: APXvYqyJIZEjZ99B+K6R50DPm7lq0IHr/E/1lfJMHdrHDPCDWuYMn1JV6lQAB5xdWdZjMaq23hnwbA==
X-Received: by 2002:a1c:f009:: with SMTP id a9mr234245wmb.32.1562001657000;
 Mon, 01 Jul 2019 10:20:57 -0700 (PDT)
Received: from [10.68.217.182] ([217.70.211.18])
 by smtp.googlemail.com with ESMTPSA id q193sm269299wme.8.2019.07.01.10.20.53
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jul 2019 10:20:56 -0700 (PDT)
Subject: Re: [PATCH v6 0/4] vfs: make immutable files actually immutable
To: "Darrick J. Wong" <darrick.wong@oracle.com>, matthew.garrett@nebula.com,
 yuchao0@huawei.com, tytso@mit.edu, ard.biesheuvel@linaro.org,
 josef@toxicpanda.com, hch@infradead.org, clm@fb.com,
 adilger.kernel@dilger.ca, viro@zeniv.linux.org.uk, jack@suse.com,
 dsterba@suse.com, jaegeuk@kernel.org, jk@ozlabs.org
References: <156174687561.1557469.7505651950825460767.stgit@magnolia>
From: Boaz Harrosh <boaz@plexistor.com>
Message-ID: <72f01c73-a1eb-efde-58fa-7667221255c7@plexistor.com>
Date: Mon, 1 Jul 2019 20:20:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <156174687561.1557469.7505651950825460767.stgit@magnolia>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_102059_085034_56EAB894 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-efi@vger.kernel.org, linux-btrfs@vger.kernel.org,
 linux-kernel@vger.kernel.org, reiserfs-devel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 linux-mm@kvack.org, linux-nilfs@vger.kernel.org, linux-mtd@lists.infradead.org,
 ocfs2-devel@oss.oracle.com, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 28/06/2019 21:34, Darrick J. Wong wrote:
> Hi all,
> 
> The chattr(1) manpage has this to say about the immutable bit that
> system administrators can set on files:
> 
> "A file with the 'i' attribute cannot be modified: it cannot be deleted
> or renamed, no link can be created to this file, most of the file's
> metadata can not be modified, and the file can not be opened in write
> mode."
> 
> Given the clause about how the file 'cannot be modified', it is
> surprising that programs holding writable file descriptors can continue
> to write to and truncate files after the immutable flag has been set,
> but they cannot call other things such as utimes, fallocate, unlink,
> link, setxattr, or reflink.
> 
> Since the immutable flag is only settable by administrators, resolve
> this inconsistent behavior in favor of the documented behavior -- once
> the flag is set, the file cannot be modified, period.  We presume that
> administrators must be trusted to know what they're doing, and that
> cutting off programs with writable fds will probably break them.
> 

This effort sounds very logical to me and sound. But are we allowed to
do it? IE: Is it not breaking ABI. I do agree previous ABI was evil but
are we allowed to break it?

I would not mind breaking it if %99.99 of the time the immutable bit
was actually set manually by a human administrator. But what if there
are automated systems that set it relying on the current behaviour?

For example I have a very distant and vague recollection of a massive
camera capture system, that was DMAing directly to file (splice). And setting
the immutable bit right away on start. Then once the capture is done
(capture file recycled) the file becomes immutable. Such program is now
broken. Who's fault is it?

I'm totally not sure and maybe you are right. But have you made a
survey of the majority of immutable uses, and are positive that
the guys are not broken after this change?

For me this is kind of scary. Yes I am known to be a SW coward ;-)

Thanks
Boaz

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
