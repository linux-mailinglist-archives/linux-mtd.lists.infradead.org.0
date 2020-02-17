Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D76161B2B
	for <lists+linux-mtd@lfdr.de>; Mon, 17 Feb 2020 20:02:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwzjXyhgknEDg4HzRt8Iu4UNHIQWQza5xD3gOndJ3cg=; b=nAXUomJMSV1hWg
	x9gSU7pKvXycUpzOZZsnNuJnQxG7kzbFRIrdhBMsFGJjQTrK0W3NsrovZ4jW3Ks9KXQ8VDotMv7uu
	E+vlJfgVbYKOWhyxKkMpP0IeaUoMtweHbnuovTC4ct2JkolygMDL73gkUIShY2ZFoDE+ilUn3oTPV
	pWTB+0wvtmlO5lyiDDhUWffBd6Ff+DEBRR6rVoi4j2aCdSkk+k6XXxocg5gYz9THFA5/espnExSMX
	RN02ixtJWD25frBFXMRXzGfvDJC8Vp0ika5DazPZOxwmkArIs4m4AlCp3y+GP8zdf6ilpkvCWc7tP
	jkeOOa2qFZGmqZS8EaHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3lf5-0004gR-H9; Mon, 17 Feb 2020 19:02:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3leu-0004Vm-TJ
 for linux-mtd@lists.infradead.org; Mon, 17 Feb 2020 19:02:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: krisman) with ESMTPSA id A833F292457
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: Daniel Rosenberg <drosen@google.com>
Subject: Re: [PATCH v7 1/8] unicode: Add utf8_casefold_iter
Organization: Collabora
References: <20200208013552.241832-1-drosen@google.com>
 <20200208013552.241832-2-drosen@google.com>
 <20200212033800.GC870@sol.localdomain>
 <CA+PiJmT_8EzyFO283_E62+UC6vtCGOJXKHAFqnH3QM9LA+PHAw@mail.gmail.com>
Date: Mon, 17 Feb 2020 14:02:10 -0500
In-Reply-To: <CA+PiJmT_8EzyFO283_E62+UC6vtCGOJXKHAFqnH3QM9LA+PHAw@mail.gmail.com>
 (Daniel Rosenberg's message of "Fri, 14 Feb 2020 13:47:37 -0800")
Message-ID: <8536b95971.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_110224_231355_D16E5681 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Theodore Ts'o <tytso@mit.edu>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Chao Yu <chao@kernel.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 Eric Biggers <ebiggers@kernel.org>, linux-fscrypt@vger.kernel.org,
 linux-mtd@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-ext4@vger.kernel.org, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Daniel Rosenberg <drosen@google.com> writes:

> On Tue, Feb 11, 2020 at 7:38 PM Eric Biggers <ebiggers@kernel.org> wrote:
>>
>> Indirect function calls are expensive these days for various reasons, including
>> Spectre mitigations and CFI.  Are you sure it's okay from a performance
>> perspective to make an indirect call for every byte of the pathname?
>>
>> > +typedef int (*utf8_itr_actor_t)(struct utf8_itr_context *, int byte, int pos);
>>
>> The byte argument probably should be 'u8', to avoid confusion about whether it's
>> a byte or a Unicode codepoint.
>>

just for the record, we use int utf8byte because it can fail
error codes, but that is not the case here.  It should be u8.

>
> Gabriel, what do you think here? I could change it to either exposing
> the things necessary to do the hashing in libfs, or instead of the
> general purpose iterator, just have a hash function inside of unicode
> that will compute the hash given a seed value.

Sorry for the delay, I'm away on a long vacation and intentionally
staying away from my laptop :)

Eric has a very good point, if not prohibitively, it is unnecessarily
expensive for a hot path.  Why not expose utf8ncursor and utf8byte to
libfs and implement the hash in libfs?

-- 
Gabriel Krisman Bertazi

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
