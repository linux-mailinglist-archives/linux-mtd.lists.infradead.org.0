Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258F9FE3FE
	for <lists+linux-mtd@lfdr.de>; Fri, 15 Nov 2019 18:31:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyb0PaoQ/KtFntnTiVY2JSzNqRREjqvSnk6joEahtS8=; b=qX9PWfH46fY/po
	2rYW6YtUfEWtb+E0n84tqUoXG/cLYSWQYo9r3gkd/+/AwHMRvxa25T9VuJNh0sy1Aghl8//Qt2V5I
	sGUz+D7Q2iWA5I1L1NzE7LmPC0rznV128xe2tgPmUBJvmEjW6M41ofRPM+K+uW4kiCjJCFUgwiAco
	fYZ/ZW+0b67lF82O7BwzWdE2Jp3CgW9gr58Hx1h5femAxcG7TTmuFL39SRrZwwjhLs371qc/jYi71
	4aQZ6Folt9l44eiFSP3BjGfGdSUJAGsoOPQVBg509Tp0UjOQiupn2ValAhVNWiO1VftmS01fe+tUq
	zjQxDUo2tC+mnx9GHq9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVfRM-0003Ls-Do; Fri, 15 Nov 2019 17:31:24 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVfR6-0001a1-PJ
 for linux-mtd@lists.infradead.org; Fri, 15 Nov 2019 17:31:10 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 09:29:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="356168681"
Received: from sgaffney-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.252.4.81])
 by orsmga004.jf.intel.com with ESMTP; 15 Nov 2019 09:28:59 -0800
Date: Fri, 15 Nov 2019 19:28:53 +0200
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH] fscrypt: support passing a keyring key to
 FS_IOC_ADD_ENCRYPTION_KEY
Message-ID: <20191115172832.GA21300@linux.intel.com>
References: <20191107001259.115018-1-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107001259.115018-1-ebiggers@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_093108_856670_07729CC7 
X-CRM114-Status: GOOD (  41.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: David Howells <dhowells@redhat.com>, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Ondrej Mosnacek <omosnace@redhat.com>, linux-f2fs-devel@lists.sourceforge.net,
 Paul Lawrence <paullawrence@google.com>, linux-fscrypt@vger.kernel.org,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 Ondrej Kozina <okozina@redhat.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-ext4@vger.kernel.org, Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 04:12:59PM -0800, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> Extend the FS_IOC_ADD_ENCRYPTION_KEY ioctl to allow the raw key to be
> specified by a Linux keyring key, rather than specified directly.
> 
> This is useful because fscrypt keys belong to a particular filesystem
> instance, so they are destroyed when that filesystem is unmounted.
> Usually this is desired.  But in some cases, userspace may need to
> unmount and re-mount the filesystem while keeping the keys, e.g. during
> a system update.  This requires keeping the keys somewhere else too.
> 
> The keys could be kept in memory in a userspace daemon.  But depending
> on the security architecture and assumptions, it can be preferable to
> keep them only in kernel memory, where they are unreadable by userspace.
> 
> We also can't solve this by going back to the original fscrypt API
> (where for each file, the master key was looked up in the process's
> keyring hierarchy) because that caused lots of problems of its own.
> 
> Therefore, add the ability for FS_IOC_ADD_ENCRYPTION_KEY to accept a
> Linux keyring key.  This solves the problem by allowing userspace to (if
> needed) save the keys securely in a Linux keyring for re-provisioning,
> while still using the new fscrypt key management ioctls.
> 
> This is analogous to how dm-crypt accepts a Linux keyring key, but the
> key is then stored internally in the dm-crypt data structures rather
> than being looked up again each time the dm-crypt device is accessed.
> 
> Use a custom key type "fscrypt-provisioning" rather than one of the
> existing key types such as "logon".  This is strongly desired because it
> enforces that these keys are only usable for a particular purpose: for
> fscrypt as input to a particular KDF.  Otherwise, the keys could also be
> passed to any kernel API that accepts a "logon" key with any service
> prefix, e.g. dm-crypt, UBIFS, or (recently proposed) AF_ALG.  This would
> risk leaking information about the raw key despite it ostensibly being
> unreadable.  Of course, this mistake has already been made for multiple
> kernel APIs; but since this is a new API, let's do it right.
> 
> Signed-off-by: Eric Biggers <ebiggers@google.com>
> ---
>  Documentation/filesystems/fscrypt.rst |  35 ++++++-
>  fs/crypto/keyring.c                   | 126 ++++++++++++++++++++++++--
>  include/uapi/linux/fscrypt.h          |  13 ++-
>  3 files changed, 162 insertions(+), 12 deletions(-)
> 
> diff --git a/Documentation/filesystems/fscrypt.rst b/Documentation/filesystems/fscrypt.rst
> index 471a511c75088d..4d15dda36402e0 100644
> --- a/Documentation/filesystems/fscrypt.rst
> +++ b/Documentation/filesystems/fscrypt.rst
> @@ -638,7 +638,8 @@ follows::
>      struct fscrypt_add_key_arg {
>              struct fscrypt_key_specifier key_spec;
>              __u32 raw_size;
> -            __u32 __reserved[9];
> +            __u32 key_id;
> +            __u32 __reserved[8];
>              __u8 raw[];
>      };
>  
> @@ -655,6 +656,12 @@ follows::
>              } u;
>      };
>  
> +    struct fscrypt_key_provisioning_payload {
> +            __u32 type;
> +            __u32 __reserved;
> +            __u8 raw[];
> +    };
> +
>  :c:type:`struct fscrypt_add_key_arg` must be zeroed, then initialized
>  as follows:
>  
> @@ -677,9 +684,26 @@ as follows:
>    ``Documentation/security/keys/core.rst``).
>  
>  - ``raw_size`` must be the size of the ``raw`` key provided, in bytes.
> +  Alternatively, if ``key_id`` is nonzero, this field must be 0, since
> +  in that case the size is implied by the specified Linux keyring key.
> +
> +- ``key_id`` is 0 if the raw key is given directly in the ``raw``
> +  field.  Otherwise ``key_id`` is the ID of a Linux keyring key of
> +  type "fscrypt-provisioning" whose payload is a ``struct
> +  fscrypt_key_provisioning_payload`` whose ``raw`` field contains the
> +  raw key and whose ``type`` field matches ``key_spec.type``.  Since
> +  ``raw`` is variable-length, the total size of this key's payload
> +  must be ``sizeof(struct fscrypt_key_provisioning_payload)`` plus the
> +  raw key size.  The process must have Search permission on this key.
> +
> +  Most users should leave this 0 and specify the raw key directly.
> +  The support for specifying a Linux keyring key is intended mainly to
> +  allow re-adding keys after a filesystem is unmounted and re-mounted,
> +  without having to store the raw keys in userspace memory.
>  
>  - ``raw`` is a variable-length field which must contain the actual
> -  key, ``raw_size`` bytes long.
> +  key, ``raw_size`` bytes long.  Alternatively, if ``key_id`` is
> +  nonzero, then this field is unused.
>  
>  For v2 policy keys, the kernel keeps track of which user (identified
>  by effective user ID) added the key, and only allows the key to be
> @@ -701,11 +725,16 @@ FS_IOC_ADD_ENCRYPTION_KEY can fail with the following errors:
>  
>  - ``EACCES``: FSCRYPT_KEY_SPEC_TYPE_DESCRIPTOR was specified, but the
>    caller does not have the CAP_SYS_ADMIN capability in the initial
> -  user namespace
> +  user namespace; or the raw key was specified by Linux key ID but the
> +  process lacks Search permission on the key.
>  - ``EDQUOT``: the key quota for this user would be exceeded by adding
>    the key
>  - ``EINVAL``: invalid key size or key specifier type, or reserved bits
>    were set
> +- ``EKEYREJECTED``: the raw key was specified by Linux key ID, but the
> +  key has the wrong type
> +- ``ENOKEY``: the raw key was specified by Linux key ID, but no key
> +  exists with that ID
>  - ``ENOTTY``: this type of filesystem does not implement encryption
>  - ``EOPNOTSUPP``: the kernel was not configured with encryption
>    support for this filesystem, or the filesystem superblock has not
> diff --git a/fs/crypto/keyring.c b/fs/crypto/keyring.c
> index 040df1f5e1c8b1..ef5b171c0f1d64 100644
> --- a/fs/crypto/keyring.c
> +++ b/fs/crypto/keyring.c
> @@ -465,6 +465,103 @@ static int add_master_key(struct super_block *sb,
>  	return err;
>  }
>  
> +static int fscrypt_provisioning_key_preparse(struct key_preparsed_payload *prep)
> +{
> +	const struct fscrypt_key_provisioning_payload *payload = prep->data;
> +
> +	if (prep->datalen < sizeof(*payload) + FSCRYPT_MIN_KEY_SIZE ||
> +	    prep->datalen > sizeof(*payload) + FSCRYPT_MAX_KEY_SIZE)
> +		return -EINVAL;

<empty line>

> +	if (payload->type != FSCRYPT_KEY_SPEC_TYPE_DESCRIPTOR &&
> +	    payload->type != FSCRYPT_KEY_SPEC_TYPE_IDENTIFIER)
> +		return -EINVAL;

<empty line>

> +	if (payload->__reserved)
> +		return -EINVAL;

<empty line>

> +	prep->payload.data[0] = kmemdup(payload, prep->datalen, GFP_KERNEL);
> +	if (!prep->payload.data[0])
> +		return -ENOMEM;

<empty line>

> +	prep->quotalen = prep->datalen;

<empty line>

> +	return 0;
> +}
> +
> +static void fscrypt_provisioning_key_free_preparse(
> +					struct key_preparsed_payload *prep)
> +{
> +	kzfree(prep->payload.data[0]);
> +}
> +
> +static void fscrypt_provisioning_key_describe(const struct key *key,
> +					      struct seq_file *m)
> +{
> +	seq_puts(m, key->description);
> +	if (key_is_positive(key)) {
> +		const struct fscrypt_key_provisioning_payload *payload =
> +			key->payload.data[0];
> +
> +		seq_printf(m, ": %u [%u]", key->datalen, payload->type);
> +	}
> +}
> +
> +static void fscrypt_provisioning_key_destroy(struct key *key)
> +{
> +	kzfree(key->payload.data[0]);
> +}
> +
> +static struct key_type key_type_fscrypt_provisioning = {
> +	.name			= "fscrypt-provisioning",
> +	.preparse		= fscrypt_provisioning_key_preparse,
> +	.free_preparse		= fscrypt_provisioning_key_free_preparse,
> +	.instantiate		= generic_key_instantiate,
> +	.describe		= fscrypt_provisioning_key_describe,
> +	.destroy		= fscrypt_provisioning_key_destroy,
> +};
> +
> +/*
> + * Retrieve the raw key from the Linux keyring key specified by 'key_id', and
> + * store it into 'secret'.
> + *
> + * The key must be of type "fscrypt-provisioning" and must have the field
> + * fscrypt_key_provisioning_payload::type set to 'type', indicating that it's
> + * only usable with fscrypt with the particular KDF version identified by
> + * 'type'.  We don't use the "logon" key type because there's no way to
> + * completely restrict the use of such keys; they can be used by any kernel API
> + * that accepts "logon" keys and doesn't require a specific service prefix.
> + *
> + * The ability to specify the key via Linux keyring key is intended for cases
> + * where userspace needs to re-add keys after the filesystem is unmounted and
> + * re-mounted.  Most users should just provide the raw key directly instead.
> + */
> +static int get_keyring_key(u32 key_id, u32 type,
> +			   struct fscrypt_master_key_secret *secret)
> +{
> +	key_ref_t ref;
> +	struct key *key;
> +	const struct fscrypt_key_provisioning_payload *payload;
> +	int err;
> +
> +	ref = lookup_user_key(key_id, 0, KEY_NEED_SEARCH);
> +	if (IS_ERR(ref))
> +		return PTR_ERR(ref);

<empty line>

> +	key = key_ref_to_ptr(ref);
> +	if (key->type != &key_type_fscrypt_provisioning)
> +		goto bad_key;

<empty line>

> +	payload = key->payload.data[0];
> +
> +	/* Don't allow fscrypt v1 keys to be used as v2 keys and vice versa. */
> +	if (payload->type != type)
> +		goto bad_key;
> +
> +	secret->size = key->datalen - sizeof(*payload);
> +	memcpy(secret->raw, payload->raw, secret->size);
> +	err = 0;
> +	goto out_put;

<empty line>

> +bad_key:
> +	err = -EKEYREJECTED;

<empty line>

> +out_put:
> +	key_ref_put(ref);
> +	return err;
> +}
> +
>  /*
>   * Add a master encryption key to the filesystem, causing all files which were
>   * encrypted with it to appear "unlocked" (decrypted) when accessed.
> @@ -503,18 +600,25 @@ int fscrypt_ioctl_add_key(struct file *filp, void __user *_uarg)
>  	if (!valid_key_spec(&arg.key_spec))
>  		return -EINVAL;
>  
> -	if (arg.raw_size < FSCRYPT_MIN_KEY_SIZE ||
> -	    arg.raw_size > FSCRYPT_MAX_KEY_SIZE)
> -		return -EINVAL;
> -
>  	if (memchr_inv(arg.__reserved, 0, sizeof(arg.__reserved)))
>  		return -EINVAL;
>  
>  	memset(&secret, 0, sizeof(secret));
> -	secret.size = arg.raw_size;
> -	err = -EFAULT;
> -	if (copy_from_user(secret.raw, uarg->raw, secret.size))
> -		goto out_wipe_secret;
> +	if (arg.key_id) {
> +		if (arg.raw_size != 0)
> +			return -EINVAL;
> +		err = get_keyring_key(arg.key_id, arg.key_spec.type, &secret);
> +		if (err)
> +			goto out_wipe_secret;
> +	} else {
> +		if (arg.raw_size < FSCRYPT_MIN_KEY_SIZE ||
> +		    arg.raw_size > FSCRYPT_MAX_KEY_SIZE)
> +			return -EINVAL;
> +		secret.size = arg.raw_size;
> +		err = -EFAULT;
> +		if (copy_from_user(secret.raw, uarg->raw, secret.size))
> +			goto out_wipe_secret;
> +	}
>  
>  	switch (arg.key_spec.type) {
>  	case FSCRYPT_KEY_SPEC_TYPE_DESCRIPTOR:
> @@ -978,8 +1082,14 @@ int __init fscrypt_init_keyring(void)
>  	if (err)
>  		goto err_unregister_fscrypt;
>  
> +	err = register_key_type(&key_type_fscrypt_provisioning);
> +	if (err)
> +		goto err_unregister_fscrypt_user;
> +
>  	return 0;
>  
> +err_unregister_fscrypt_user:
> +	unregister_key_type(&key_type_fscrypt_user);
>  err_unregister_fscrypt:
>  	unregister_key_type(&key_type_fscrypt);
>  	return err;
> diff --git a/include/uapi/linux/fscrypt.h b/include/uapi/linux/fscrypt.h
> index 1beb174ad95056..605dde7343a4e4 100644
> --- a/include/uapi/linux/fscrypt.h
> +++ b/include/uapi/linux/fscrypt.h
> @@ -109,11 +109,22 @@ struct fscrypt_key_specifier {
>  	} u;
>  };
>  
> +/*
> + * Payload for Linux keyring key of type "fscrypt-provisioning", referenced by
> + * fscrypt_add_key_arg::key_id as an alternative to fscrypt_add_key_arg::raw.
> + */
> +struct fscrypt_key_provisioning_payload {
> +	__u32 type;
> +	__u32 __reserved;
> +	__u8 raw[];
> +};
> +
>  /* Struct passed to FS_IOC_ADD_ENCRYPTION_KEY */
>  struct fscrypt_add_key_arg {
>  	struct fscrypt_key_specifier key_spec;
>  	__u32 raw_size;
> -	__u32 __reserved[9];
> +	__u32 key_id;
> +	__u32 __reserved[8];
>  	__u8 raw[];
>  };
>  
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

I don't see anything obviously wrong. Just would reformat it a bit.
How you tested it?

/Jarkko

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
