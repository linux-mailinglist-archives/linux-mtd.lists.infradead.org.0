Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA5711324
	for <lists+linux-mtd@lfdr.de>; Thu,  2 May 2019 08:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUcwBdenS5pLqCoJFJHU1SrewHau7k3e12qf4F08Ims=; b=s7eGncfJpCV7H3
	sClO6e406V+7iZ2CZNsQEkvRw8eUsihFxhz3ubPiFk1lZbtDpENnbRO+aliE5SN1u/O86fLIv55ru
	UWl+9jfnyr10qvCKSzGwulZcuSynwVY0Faz3fxZfX/SO80DFUvRCJLbCrZUSci0i3T+dXtACwPBhg
	vkScwINtsPek7go86A+8qYIMcij7QVl0Ya1dSjw68Esas0AWJuw8c3qroD/0QVuOyFx4RsI1r57OI
	xFdnc9k0JY//zNAHm8reUgkx3LPo0mCiypJ+mo50a5vXUDq6Lxe9Bww5Xm7ddBZSt05y1J2LkEzPz
	Ub4TVtSTAVL6V/TPqrtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM4tk-00066E-Im; Thu, 02 May 2019 06:08:48 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM4tb-00065r-El
 for linux-mtd@lists.infradead.org; Thu, 02 May 2019 06:08:41 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4264cwP036575;
 Thu, 2 May 2019 06:08:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=8E/Xlfqhfo0vf1+GOu+GJdon4fjnIK8RWeWcR7c5CxQ=;
 b=nR8WtxOm+plPvZHMSK561p3KEYr+W5P6dt5wv8Wdyq6G6c4sXKsJ27dNGyglUgYLlvQw
 TiwiQ/8ArXmSJ9Q7w4ZZqnOHmUKWrMN27w4kkS53VuPtYwVISOfzQg8cxC83uMEFA0AY
 ptwm+dRcbI2QNQ2sKnrVBJjEfy5X3NGrEgla0ZjGVVtT7DkKeko/waa8V/JrixHuQk56
 atmQcJgoSXiGDQebmXLhT1JEYypI7ONEyIAva38jMv4vOxLlwbvrWeL2xYOzmBI9We+P
 Y5PyHQUo4Q4VPRHo3QiEAr7J7oq9mMKN/9QfJgBAmoTHtmy586V2N2g2r6kmRLxrYyyd Xg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2s6xhyecfj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 May 2019 06:08:32 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4266meq072708;
 Thu, 2 May 2019 06:08:32 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2s6xhgmfew-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 May 2019 06:08:31 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4268UcT005438;
 Thu, 2 May 2019 06:08:30 GMT
Received: from [192.168.0.100] (/73.243.10.6)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 01 May 2019 23:08:30 -0700
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH 5/4] 9p: pass the correct prototype to read_cache_page
From: William Kucharski <william.kucharski@oracle.com>
In-Reply-To: <20190501173443.GA19969@lst.de>
Date: Thu, 2 May 2019 00:08:29 -0600
Message-Id: <AEBFD2FC-F94A-4E5B-8E1C-76380DDEB46E@oracle.com>
References: <20190501160636.30841-1-hch@lst.de> <20190501173443.GA19969@lst.de>
To: Christoph Hellwig <hch@lst.de>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9244
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905020048
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9244
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905020048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_230839_626600_AF50EFD5 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Sami Tolvanen <samitolvanen@google.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

1) You need to pass "filp" rather than "filp->private_data" to read_cache_pages()
in v9fs_fid_readpage().

The patched code passes "filp->private_data" as the "data" parameter to
read_cache_pages(), which would generate a call to:

    filler(data, page)

which would become a call to:

static int v9fs_vfs_readpage(struct file *filp, struct page *page)
{	
        return v9fs_fid_readpage(filp->private_data, page);
}

which would then effectively become:

    v9fs_fid_readpage(filp->private_data->private_data, page)

Which isn't correct; because data is a void *, no error is thrown when
v9fs_vfs_readpages treats filp->private_data as if it is filp.


2) I'd also like to see an explicit comment in do_read_cache_page() along
the lines of:

/*
 * If a custom page filler was passed in use it, otherwise use the
 * standard readpage() routine defined for the address_space.
 *
 */

3) Patch 5/4?

Otherwise it looks good.

Reviewed-by: William Kucharski <william.kucharski@oracle.com>

> On May 1, 2019, at 11:34 AM, Christoph Hellwig <hch@lst.de> wrote:
> 
> Fix the callback 9p passes to read_cache_page to actually have the
> proper type expected.  Casting around function pointers can easily
> hide typing bugs, and defeats control flow protection.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
> fs/9p/vfs_addr.c | 6 ++++--
> 1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
> index 0bcbcc20f769..02e0fc51401e 100644
> --- a/fs/9p/vfs_addr.c
> +++ b/fs/9p/vfs_addr.c
> @@ -50,8 +50,9 @@
>  * @page: structure to page
>  *
>  */
> -static int v9fs_fid_readpage(struct p9_fid *fid, struct page *page)
> +static int v9fs_fid_readpage(void *data, struct page *page)
> {
> +	struct p9_fid *fid = data;
> 	struct inode *inode = page->mapping->host;
> 	struct bio_vec bvec = {.bv_page = page, .bv_len = PAGE_SIZE};
> 	struct iov_iter to;
> @@ -122,7 +123,8 @@ static int v9fs_vfs_readpages(struct file *filp, struct address_space *mapping,
> 	if (ret == 0)
> 		return ret;
> 
> -	ret = read_cache_pages(mapping, pages, (void *)v9fs_vfs_readpage, filp);
> +	ret = read_cache_pages(mapping, pages, v9fs_fid_readpage,
> +			filp->private_data);
> 	p9_debug(P9_DEBUG_VFS, "  = %d\n", ret);
> 	return ret;
> }


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
