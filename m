Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FB816615
	for <lists+linux-mtd@lfdr.de>; Tue,  7 May 2019 16:54:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:Subject:References:To:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctVdCo4swVa1UnB8iG41Z16/rtHmlGsm5Kzc4rND5Mg=; b=VpXYR1qCFah+lE
	53OBSQkmR88TpRU9zFOJbrdE/H9qfaoPF/cZdKI3zNLhpp9FAXL6/uAq3iwdhl+foOZ5jEFoo/EkZ
	+ER76VUCTdYDPbwteh0PQIE6Z1Hn++6PphlWW/ARXDkig7n/D23CRBjZnQbUPPQin+gubfa/nGB97
	r0Quqo/6j3HANfXaCvRiJn2l1mmX+zXNMDBXNYwx4fTSL5cez14HPWNx8LV2sVQgqBymzkdlk2vBX
	+Ax2L9Gc6dB1oIZxnwxsbG3rIHqIVUNsa3HBWdUUV7rcmYpkZZxXqNIdNZr5+9inES5x3DB4BjA7r
	IlWJGj2bZEmWjdRjufvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO1UF-0001yB-Ce; Tue, 07 May 2019 14:54:31 +0000
Received: from gateway20.websitewelcome.com ([192.185.50.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO1U6-0001xa-2X
 for linux-mtd@lists.infradead.org; Tue, 07 May 2019 14:54:24 +0000
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
 by gateway20.websitewelcome.com (Postfix) with ESMTP id ABB6740131495
 for <linux-mtd@lists.infradead.org>; Tue,  7 May 2019 09:54:20 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id O1U4hdZilYTGMO1U4hh6gQ; Tue, 07 May 2019 09:54:20 -0500
X-Authority-Reason: nr=8
Received: from [189.250.119.7] (port=35262 helo=[192.168.1.76])
 by gator4166.hostgator.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hO1U4-002xyG-13; Tue, 07 May 2019 09:54:20 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <20190208180202.GA16603@embeddedor>
 <69083203-0720-1943-8549-ddf3cea6060e@embeddedor.com>
 <71df15e7-af2e-0326-78fe-0271a1e240fe@embeddedor.com>
 <20190415104458.7faeec57@xps13>
 <ee1f8c4a-92b0-db9d-6110-3acadeb9e457@embeddedor.com>
 <20190416192408.0e321563@xps13>
 <8df20a3a-3068-1fb7-0421-e6c417550125@embeddedor.com>
Openpgp: preference=signencrypt
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Subject: Re: [PATCH] mtd: cfi_util: mark expected switch fall-throughs
Message-ID: <3034821c-3cd0-b0c5-a6fd-548fd87486a4@embeddedor.com>
Date: Tue, 7 May 2019 09:54:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <8df20a3a-3068-1fb7-0421-e6c417550125@embeddedor.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 189.250.119.7
X-Source-L: No
X-Exim-ID: 1hO1U4-002xyG-13
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.76]) [189.250.119.7]:35262
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 14
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_075422_450891_182DFEF5 
X-CRM114-Status: GOOD (  48.87  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.50.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.9 URG_BIZ                BODY: Contains urgent matter
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Kees Cook <keescook@chromium.org>, Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi all,

Thanks a lot for this, Richard:

https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git/log/?h=mtd%2Fnext&qt=grep&q=fall-through

There are only two of these warnings left to be addressed in
MTD[1]:

        > @@ -3280,12 +3280,14 @@ static void onenand_check_features(struct mtd_info *mtd)
        >                       if ((this->version_id & 0xf) == 0xe)
        >                               this->options |= ONENAND_HAS_NOP_1;
        >               }
        > +             /* fall through */
        >
        >       case ONENAND_DEVICE_DENSITY_2Gb:
        >               /* 2Gb DDP does not have 2 plane */
        >               if (!ONENAND_IS_DDP(this))
        >                       this->options |= ONENAND_HAS_2PLANE;
        >               this->options |= ONENAND_HAS_UNLOCK_ALL;
        > +             /* fall through */

        This looks strange.

        In ONENAND_DEVICE_DENSITY_2Gb:
        ONENAND_HAS_UNLOCK_ALL is set unconditionally.

        But then, under ONENAND_DEVICE_DENSITY_1Gb, the same option is set only
        if process is evaluated to true.

        Same problem with ONENAND_HAS_2PLANE:
        - it is set in ONENAND_DEVICE_DENSITY_4Gb only if ONENAND_IS_DDP()
        - it is unset in ONENAND_DEVICE_DENSITY_2Gb only if !ONENAND_IS_DDP()

        Maybe this portion should be reworked because I am unsure if this is a
        missing fall through or a bug.


Thanks
--
Gustavo

[1] https://lore.kernel.org/patchwork/patch/1036251/

On 4/16/19 3:49 PM, Gustavo A. R. Silva wrote:
> Hi Miquel,
> 
> On 4/16/19 12:24 PM, Miquel Raynal wrote:
>> Hi Gustavo,
>>
>> "Gustavo A. R. Silva" <gustavo@embeddedor.com> wrote on Mon, 15 Apr
>> 2019 07:57:11 -0500:
>>
>>> Hi Miquel,
>>>
>>> On 4/15/19 3:44 AM, Miquel Raynal wrote:
>>>> Hi Gustavo,
>>>>
>>>> "Gustavo A. R. Silva" <gustavo@embeddedor.com> wrote on Wed, 10 Apr
>>>> 2019 16:16:51 -0500:
>>>>   
>>>>> Hi all,
>>>>>
>>>>> If no one cares I'll add this to my tree for 5.2.  
>>>>
>>>> Which tree are you talking about?
>>>>   
>>>
>>> This one:
>>>
>>> https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git/log/?h=for-next/kspp
>>>
>>>> Please let the MTD maintainers take patches through their tree. We
>>>> might be late but this is definitely not a good reason to bypass us.
>>>>   
>>> It's a bit confusing when patches are being ignored for more than two
>>> months:
>>>
>>> https://lore.kernel.org/patchwork/patch/1040099/
>>> https://lore.kernel.org/patchwork/patch/1040100/
>>> https://lore.kernel.org/patchwork/patch/1040098/
>>>
>>
>> Patches posted at -rc6 right before the last release? Come on! Gustavo,
>> we always spend more time for you than for other contributors because we
>> do not trust your changes. We could apply them blindly but we don't do
>> that for other (worthy) contributions, so why shall we do it for you?
>>
> 
> Oh, I didn't know about that. You don't have to blindly trust me.
> I sincerely think people should always double check any changes,
> regardless of their level of trust in a particular person/entity.
> 
> Anyway, I really appreciate your sincerity because now I think we can
> come up with a good strategy to collaborate with each other smoothly.
> 
> It seems to me that the root cause for this lack of trust, and, maybe
> even despite towards these type of patches, is basically misunderstanding
> of what I'm trying to accomplish and, more importantly, how I do it.
> 
>> I think you could at least flag these changes as "automatic and
>> unverified" in the commit log so that when git blaming, people could
>> know that the additional explicit /* fallthrough */ comment might be
>> wrong and was just added in order to limit the number of warnings when
>> enabling the extra GCC warning.
>>
> 
> I don't do that because that's not how I'm tackling this task.
> 
> I'm not sending these patches with the intention of merely accumulate
> contributions --and I'm not saying you say so, this is just for
> clarification-- or because of a lack of more technically interesting
> things to do in the kernel --this is certainly not the only thing I'm
> working on.  What I'm trying to accomplish is to be able to add
> -Wimplicit-fallthrough to the build so that the kernel will stay
> entirely free of this class of bug going forward; is that simple. Now,
> why is that? because sometimes people forget to place a break/return
> and a bug is introduced, and it could take up to 7 years to fix it [1].
> 
> Now, I really try to determine if I'm dealing with a false positive or
> an actual bug every time. I read the code and try to understand the
> context around which each warning is reported. You can tell it's not
> the most sexy and glamorous thing. And a static analyzer is clearly not
> sophisticated enough to spot actual bugs in this situation, not even
> the Coccinelle tool.
> 
> I had a similar conversation with a wireless maintainer a while ago. He
> claimed I was not even looking at the code and that I was blindly using
> a transformation tool [2]. Please, take a look at it, so you can better
> understand my workflow.
> 
> I have gone through this process of reading code all over the tree and
> trying to understand it hundreds of times; there were more than 2000 of
> these warnings at the time I started working on this, and there are are
> around 50 left in linux-next.  Of course, the vast majority of cases have
> resulted to be obvious false positives, but it's me who have determined
> that, by auditing each case, so I haven't blindly placed any fall-through
> comment.
> 
> Now, have I made any mistake? Of course! but I have also amended it
> immediately [3][4]. And the number of bugs I have fixed while working
> on this task is much bigger.  A clear example of how hard this can be is
> documented in this thread, in which you, being an MTD maintainer, cannot
> clearly determine if this is a false positive or an actual bug [5]. It
> can be troublesome for you for a number of reasons --I'm not judging that.
> I'm trying to illustrate the magnitude of the task as a whole.
> 
> So, this patches together with the related bugfixes are part of that
> whole. And, although sometimes painful for everyone, that whole is
> what's important, and worth it.
> 
>>> Certainly, Richard Weinberger replied to this one. But I couldn't
>>> find a tree to which this patch was applied, in case it actually
>>> was.
>>>
>>> It's a common practice for maintainers to reply saying that a patch
>>> has been finally applied, and in most cases they also explicitly
>>> mention the tree and branch to which it was applied. All this info
>>> is really helpful for people working all over the tree.
>>
>> It is common practice for contributors to understand what they
>> are doing before submitting a change and this is something that you
>> clearly don't try to do.
>>
> 
> This is too much to say, and sadly, it's not uncommon for even the most
> senior people to assume others don't even make an effort to think through
> their work, before at least asking. But I have already explained myself
> above.
> 
> Regarding this:
> 
>> Patches posted at -rc6 right before the last release? Come on! Gustavo,
> 
> I don't expect people to send an urgent pull-request to merge this
> patches into mainline as soon as they arrive, and I have never requested
> such thing.
> 
> Lastly, what I really want we *all* get out of this conversation is a
> better way to collaborate with each other.  For me, and I guess for most
> contributors, it's good enough to have a confirmation that the accepted
> patch has been applied to a certain branch in a certain tree. I understand
> this may sound like an special request, in particular because, currently,
> the number of people working all over the tree is not that big, so it
> is not that critical for maintainers to adopt certain practices that
> benefits this small group of contributors, but thanks to recent initiatives
> as The Linux Kernel Mentorship project I think this is going to change and
> it will force us all to evolve in the right direction.
> 
> By the way, notice that these are the last patches for MTD. :)
> 
> Thank you
> --
> Gustavo
> 
> References:
> 
> [1] https://lore.kernel.org/patchwork/patch/1042976/
> [2] https://lore.kernel.org/patchwork/patch/1002568/
> [3] https://lore.kernel.org/patchwork/patch/970617/
> [4] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?h=v5.1-rc5&id=ad0eaee6195db1db1749dd46b9e6f4466793d178
> [5] https://lore.kernel.org/patchwork/patch/1036251/
> 
> 
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
