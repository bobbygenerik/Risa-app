.class public final Lʽ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/HashMap;

.field public ˈ:Ljava/util/ArrayList;

.field public final transient ˑﹳ:Ljava/util/HashMap;

.field public final ᵎﹶ:Landroid/os/Bundle;

.field public final synthetic ᵔᵢ:Lʽ/ٴﹶ;

.field public final ⁱˊ:Ljava/util/HashMap;

.field public final ﹳٴ:Ljava/util/HashMap;

.field public final ﾞᴵ:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lʽ/ٴﹶ;)V
    .locals 0

    iput-object p1, p0, Lʽ/ﾞᴵ;->ᵔᵢ:Lʽ/ٴﹶ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lʽ/ﾞᴵ;->ﹳٴ:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lʽ/ﾞᴵ;->ⁱˊ:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lʽ/ﾞᴵ;->ʽ:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lʽ/ﾞᴵ;->ˈ:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lʽ/ﾞᴵ;->ˑﹳ:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lʽ/ﾞᴵ;->ﾞᴵ:Ljava/util/HashMap;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lʽ/ﾞᴵ;->ᵎﹶ:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final ʽ(Ljava/lang/String;Landroidx/lifecycle/ʽﹳ;Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)Lˑﹳ/ˈ;
    .locals 8

    .prologue
    invoke-interface {p2}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object v0

    iget-object v1, v0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v2, Landroidx/lifecycle/ᵔʾ;->ˈٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ᵔʾ;->ﹳٴ(Landroidx/lifecycle/ᵔʾ;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lʽ/ﾞᴵ;->ˑﹳ(Ljava/lang/String;)V

    iget-object p2, p0, Lʽ/ﾞᴵ;->ʽ:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑﹳ/ﾞᴵ;

    if-nez v1, :cond_0

    new-instance v1, Lˑﹳ/ﾞᴵ;

    invoke-direct {v1, v0}, Lˑﹳ/ﾞᴵ;-><init>(Landroidx/lifecycle/ـˆ;)V

    :cond_0
    new-instance v2, Lˑʼ/ˋᵔ;

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lˑʼ/ˋᵔ;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, v1, Lˑﹳ/ﾞᴵ;->ﹳٴ:Landroidx/lifecycle/ـˆ;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    iget-object p1, v1, Lˑﹳ/ﾞᴵ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lˑﹳ/ˈ;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v4, v6, p2}, Lˑﹳ/ˈ;-><init>(Lʽ/ﾞᴵ;Ljava/lang/String;Lcom/bumptech/glide/ˈ;I)V

    return-object p1

    :cond_1
    move-object v3, p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "LifecycleOwner "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is attempting to register while current state is "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". LifecycleOwners must call register before they are STARTED."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˈ(Ljava/lang/String;Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)Lˑﹳ/ˈ;
    .locals 2

    .prologue
    invoke-virtual {p0, p1}, Lʽ/ﾞᴵ;->ˑﹳ(Ljava/lang/String;)V

    new-instance v0, Lˑﹳ/ˑﹳ;

    invoke-direct {v0, p2, p3}, Lˑﹳ/ˑﹳ;-><init>(Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)V

    iget-object v1, p0, Lʽ/ﾞᴵ;->ˑﹳ:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lʽ/ﾞᴵ;->ﾞᴵ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, v1}, Lˑﹳ/ⁱˊ;->ᵔᵢ(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lʽ/ﾞᴵ;->ᵎﹶ:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lˑﹳ/ﹳٴ;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget v0, v1, Lˑﹳ/ﹳٴ;->ʾˋ:I

    iget-object v1, v1, Lˑﹳ/ﹳٴ;->ᴵˊ:Landroid/content/Intent;

    invoke-virtual {p2, v1, v0}, Lcom/bumptech/glide/ˈ;->ᴵˊ(Landroid/content/Intent;I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lˑﹳ/ⁱˊ;->ᵔᵢ(Ljava/lang/Object;)V

    :cond_1
    new-instance p3, Lˑﹳ/ˈ;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, p2, v0}, Lˑﹳ/ˈ;-><init>(Lʽ/ﾞᴵ;Ljava/lang/String;Lcom/bumptech/glide/ˈ;I)V

    return-object p3
.end method

.method public final ˑﹳ(Ljava/lang/String;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lʽ/ﾞᴵ;->ⁱˊ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lʽʻ/ˈ;->ʾˋ:Lʽʻ/ﹳٴ;

    sget-object v1, Lʽʻ/ˈ;->ʾˋ:Lʽʻ/ﹳٴ;

    invoke-virtual {v1}, Lʽʻ/ﹳٴ;->ﹳٴ()Ljava/util/Random;

    move-result-object v1

    const/high16 v2, 0x7fff0000

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/high16 v3, 0x10000

    :goto_0
    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lʽ/ﾞᴵ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v1, Lʽʻ/ˈ;->ʾˋ:Lʽʻ/ﹳٴ;

    sget-object v1, Lʽʻ/ˈ;->ʾˋ:Lʽʻ/ﹳٴ;

    invoke-virtual {v1}, Lʽʻ/ﹳٴ;->ﹳٴ()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ⁱˊ(ILcom/bumptech/glide/ˈ;Ljava/lang/Object;)V
    .locals 8

    .prologue
    iget-object v0, p0, Lʽ/ﾞᴵ;->ᵔᵢ:Lʽ/ٴﹶ;

    invoke-virtual {p2, v0, p3}, Lcom/bumptech/glide/ˈ;->ʽﹳ(Landroid/content/Context;Ljava/lang/Object;)Lᐧﹳ/ʽ;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lʼⁱ/ˉٴ;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, v1, v0}, Lʼⁱ/ˉٴ;-><init>(Lʽ/ﾞᴵ;ILjava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/ˈ;->ˉʿ(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    const-string p3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const-string p3, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    const-string p3, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_3

    new-array p2, p3, [Ljava/lang/String;

    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move v2, p3

    :goto_2
    array-length v3, p2

    if-ge v2, v3, :cond_6

    aget-object v3, p2, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-ge v3, v4, :cond_4

    aget-object v3, p2, v2

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Permission request for permissions "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, " must not contain null or empty values"

    invoke-static {p3, p2, v0}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_7

    array-length v3, p2

    sub-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v3, p2

    :goto_3
    if-lez v2, :cond_a

    array-length v4, p2

    if-ne v2, v4, :cond_8

    return-void

    :cond_8
    move v2, p3

    :goto_4
    array-length v4, p2

    if-ge p3, v4, :cond_a

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    add-int/lit8 v4, v2, 0x1

    aget-object v5, p2, p3

    aput-object v5, v3, v2

    move v2, v4

    :cond_9
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_a
    instance-of p3, v0, Lˊʻ/ﹳٴ;

    if-eqz p3, :cond_b

    move-object p3, v0

    check-cast p3, Lˊʻ/ﹳٴ;

    :cond_b
    invoke-virtual {v0, p2, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_c
    const-string p3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    const-string p3, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lˑﹳ/ᵎﹶ;

    :try_start_0
    iget-object v1, p2, Lˑﹳ/ᵎﹶ;->ʾˋ:Landroid/content/IntentSender;

    iget-object v3, p2, Lˑﹳ/ᵎﹶ;->ᴵˊ:Landroid/content/Intent;

    iget v4, p2, Lˑﹳ/ᵎﹶ;->ʽʽ:I

    iget v5, p2, Lˑﹳ/ᵎﹶ;->ˈٴ:I
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    move v2, p1

    :try_start_1
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_5
    move-object p1, v0

    goto :goto_6

    :catch_1
    move-exception v0

    move v2, p1

    goto :goto_5

    :goto_6
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lʼⁱ/ˉٴ;

    const/4 v0, 0x2

    invoke-direct {p3, p0, v2, p1, v0}, Lʼⁱ/ˉٴ;-><init>(Lʽ/ﾞᴵ;ILjava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_d
    move v2, p1

    invoke-virtual {v0, p2, v2, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final ﹳٴ(IILandroid/content/Intent;)Z
    .locals 3

    .prologue
    iget-object v0, p0, Lʽ/ﾞᴵ;->ﹳٴ:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lʽ/ﾞᴵ;->ˑﹳ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˑﹳ/ˑﹳ;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lˑﹳ/ˑﹳ;->ﹳٴ:Lˑﹳ/ⁱˊ;

    iget-object v2, p0, Lʽ/ﾞᴵ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lˑﹳ/ˑﹳ;->ⁱˊ:Lcom/bumptech/glide/ˈ;

    invoke-virtual {v0, p3, p2}, Lcom/bumptech/glide/ˈ;->ᴵˊ(Landroid/content/Intent;I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p2}, Lˑﹳ/ⁱˊ;->ᵔᵢ(Ljava/lang/Object;)V

    iget-object p2, p0, Lʽ/ﾞᴵ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lʽ/ﾞᴵ;->ﾞᴵ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lˑﹳ/ﹳٴ;

    invoke-direct {v0, p3, p2}, Lˑﹳ/ﹳٴ;-><init>(Landroid/content/Intent;I)V

    iget-object p2, p0, Lʽ/ﾞᴵ;->ᵎﹶ:Landroid/os/Bundle;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ﾞᴵ(Ljava/lang/String;)V
    .locals 7

    .prologue
    iget-object v0, p0, Lʽ/ﾞᴵ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lʽ/ﾞᴵ;->ⁱˊ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lʽ/ﾞᴵ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lʽ/ﾞᴵ;->ˑﹳ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lʽ/ﾞᴵ;->ﾞᴵ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ": "

    const-string v3, "Dropping pending result for request "

    const-string v4, "ActivityResultRegistry"

    if-eqz v1, :cond_1

    invoke-static {v3, p1, v2}, Lˉˆ/ٴᴵ;->ˉˆ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lʽ/ﾞᴵ;->ᵎﹶ:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v3, p1, v2}, Lˉˆ/ٴᴵ;->ˉˆ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lʽ/ﾞᴵ;->ʽ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑﹳ/ﾞᴵ;

    if-eqz v1, :cond_4

    iget-object v2, v1, Lˑﹳ/ﾞᴵ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroidx/lifecycle/יـ;

    iget-object v6, v1, Lˑﹳ/ﾞᴵ;->ﹳٴ:Landroidx/lifecycle/ـˆ;

    invoke-virtual {v6, v5}, Landroidx/lifecycle/ـˆ;->ﾞᴵ(Landroidx/lifecycle/ˏי;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method
