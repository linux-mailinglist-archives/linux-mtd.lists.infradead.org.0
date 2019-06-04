Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AF533D1C
	for <lists+linux-mtd@lfdr.de>; Tue,  4 Jun 2019 04:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oK0L3P5zTvtyIuVg8m2HRaY5HOF6KPAShfZt+wp64NI=; b=ZHuZsE46Q4S6Bx
	SYCgBHHTNHwdxmhJSHoLXQL58kHWE8OpML6B7EQim3k5XIOTPbkbh4lcZXI62A12NIsYUgzJD3fBq
	5ZI8tVfJ4zCf3G3OJZ3TWaoAkZesZBcipfI2kfqvrvz/qiXy8gZU/JWhb/x32FeHNys02bVpQddOF
	uL6aHwWPKJp6Chnkni/8zlgBapm75QSqwxMhr2Mf76GX6WfF3ZN+gPJ46WO+8P8lXeXXxlr2UymHD
	3v0OaCA9WCF29/F0R0N9kfnz+QyUhZHakT0/0820mdnUS6tQm4nsH0e1SMuR18dNM1IBctU+MHLGg
	sbbNv8dt2RjOGrjLF9bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXz7U-0006aF-O3; Tue, 04 Jun 2019 02:24:12 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXz7M-0006ZR-7v
 for linux-mtd@lists.infradead.org; Tue, 04 Jun 2019 02:24:05 +0000
Received: by mail-oi1-x241.google.com with SMTP id y6so10808846oix.2
 for <linux-mtd@lists.infradead.org>; Mon, 03 Jun 2019 19:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=sBuZQgLGgSQ7kvRAL03aIr/Wcvjnnb3lyTs/Aaqfbwk=;
 b=uXxcaXLwANyRa3+NmViVADczyp+SQWIRrz4yHcKYqPorLi6YwOdY8iIZ9ZeOzNsByH
 uSKqOXNkrAGVc2uaUPT2Pq1rTY5R0T8nCJ1qz8TlDpZuBhYhCUwlqVYPfhdH/XHq4Vqe
 TKm/Q48MGRe4lutSLUGeeIWvZJPabCG7pcTnCFNUo3y6sAwiSOHkl0NzAG3BrDCVhbnL
 iFVLbyk897P+wM6kWFFvHguyVDulSsyFhemJ3l3nLhoN36baybFzgNuQCsPs/mDm9H/k
 F76p3dKGxFkL2LMWByAZHtm7SltVMkuvkzvsIlKkxwO4xV1twh93IQFsle1zWkwb2FLE
 tuKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=sBuZQgLGgSQ7kvRAL03aIr/Wcvjnnb3lyTs/Aaqfbwk=;
 b=Zr/CeKIapXqV+hwqYRVxPOcXU0YAWLqOogqHozMdOm4svNOXVhJGvb4ssKMX/lqdJu
 zk4qMHiJoAMdWBMD+fBL/bRfJGoe7eP9KQZ6dcJQF6YbqE+veT99kLoTYueB7mJdBpR2
 CzDoAbBwsRbtoaO7QXuJMYeqQ99orLLcEPfT0lCPGHbndhfMQH9W28vMdEiRnVX2TECu
 7CcREVBfqH2fQN+B7tTP7oJpud+18syASvxUrOH0NNrLufBVbXn0sKeO5eOqOf0lSwDM
 FgyfLHFuuFCY5lOYfPonWZJeFbuX/MK48u/5sStVnSJAecjlo24+wFj3BwpUYlA0OIu9
 oMTg==
X-Gm-Message-State: APjAAAW1vpor85J3hBcCEdGVKK0HhAujEXH8OsVJFaruPdsWkpGGNY1h
 2bGnNqKhQFa8Ct9WtjWqT/AOvJvSLNikBCqq51K/8mP4
X-Google-Smtp-Source: APXvYqw8jQ23yIAIP/ibRuqFL1purvdmWMRxLGuNqw3GaUnIhJ/DwQ0i+JQBtbdCTF6YlsnIUUgb7XQDZ0shWMuWKFQ=
X-Received: by 2002:aca:3545:: with SMTP id c66mr2444017oia.129.1559615042928; 
 Mon, 03 Jun 2019 19:24:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:97e3:0:0:0:0:0 with HTTP;
 Mon, 3 Jun 2019 19:24:02 -0700 (PDT)
From: "Mr.Adams Bello" <monicabentley645@gmail.com>
Date: Tue, 4 Jun 2019 03:24:02 +0100
Message-ID: <CAEB4qVbgxyVe3vMODZzObUezvJKriw-Td0OA7V78mUdYVu2GVw@mail.gmail.com>
Subject: ATTENTION
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_192404_288406_6364EFF8 
X-CRM114-Status: UNSURE (  -3.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.1 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (monicabentley645[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (monicabentley645[at]gmail.com)
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (officeinfo1089[at]gmail.com)
 0.0 DEAR_BENEFICIARY       BODY: Dear Beneficiary:
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.5 HK_NAME_FM_MR_MRS      No description available.
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 1.3 MONEY_ATM_CARD         Lots of money on an ATM card
 0.0 ADVANCE_FEE_5_NEW_MONEY Advance Fee fraud and lots of money
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
Reply-To: officeinfo1089@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

-- 
Dear Beneficiary,

The is to bring to your notice that the Department of Treasury Office
in Nigeria in affiliation with the Federal Government of Nigeria,and
the Office of Foreign Assets Control here in Nigeria has been
authorized in their sanction programs to compensate 1,000 scam victims
who has being a victim of internet scam. The Federal Government of
Nigeria in collaboration with the Department of the Treasury Office
has decided to pay $1,000.000.00 USD(One Million United States
Dollars) each in order to restore the global economy to the enviable
standard of respectable persons that was scammed. Your names and
particulars was mentioned by one of the syndicates who was arrested as
one of the victims of their operations. Although to issue payments to
the right persons we need you to reconfirm your information's to
compare with what was given to us. Most importantly you are hereby
warned not to communicate or duplicate this message to anyone or
whatsoever as investigations are still ongoing in trace of the other
criminals so therefore this information's should remain confidential
to you alone and the agencies involved in the exercise.

Finally all payments are done by AUTOMATED TELLER MACHINE(ATM), loaded
with $1,000.000.00 with your names on the ATM CARD waiting to be sent
to you reconfirmation of your information's on our desk.

Best Regards
Mr. Adams Bello
Secretary's Desk
E-mail: officeinfo1089@gmail.com

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
