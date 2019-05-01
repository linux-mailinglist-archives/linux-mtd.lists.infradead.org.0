Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B96110A9C
	for <lists+linux-mtd@lfdr.de>; Wed,  1 May 2019 18:07:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Se5Ho3tuPRdSOLnnMhihN+RAin8m0r2Ebm2RtVEpftg=; b=Cl8td1RSy7uA0N
	IUm0dkfEKEJfm3NsGHpNCHJvQ1ZH7kKlc/OlvLqPkQi/tISUcAt1CAFntIozKR7SvfL6wBJ+2+7XC
	82Axpx2UHI3gyaqmnRBhtAHY6lN3lgJaQKJGwN28cESvN3m7vKYUfwsGPerYtQT5nbZzp9HCXBhz5
	rSRtyUpz4kArUbz71oXXU4n/zzXbslqfvwlmScVY2RrUukoajL2Noe0J9OmmXpWiHTNSJxmYinAzd
	ZVKq4vmN272tkW3uF/FNp+RMgEPd0YvkkH3sXVogs9XkERaaukTQvY+P1KE3aLdCwPwbS4u8gWVei
	vqC0kdt0hK8gfyS92OrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrlQ-0008Kz-QD; Wed, 01 May 2019 16:07:20 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLrlJ-0008Km-QG; Wed, 01 May 2019 16:07:14 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: fix filler_t callback type mismatches
Date: Wed,  1 May 2019 12:06:32 -0400
Message-Id: <20190501160636.30841-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: linux-nfs@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org,
 Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Casting mapping->a_ops->readpage to filler_t causes an indirect call
type mismatch with Control-Flow Integrity checking. This change fixes
the mismatch in read_cache_page_gfp and read_mapping_page by adding
using a NULL filler argument as an indication to call ->readpage
directly, and by passing the right parameter callbacks in nfs and jffs2.


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
