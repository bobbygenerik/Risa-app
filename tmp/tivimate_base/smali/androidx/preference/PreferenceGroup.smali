.class public abstract Landroidx/preference/PreferenceGroup;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public ʼـ:I

.field public final ʽᵔ:Landroid/os/Handler;

.field public ʾˊ:I

.field public final ˎᐧ:Landroidx/leanback/widget/ᵔʾ;

.field public ˑ:Z

.field public י:Z

.field public final ـᵎ:Lיـ/ﹳᐧ;

.field public final ᐧﹶ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lיـ/ﹳᐧ;

    invoke-direct {v0, p4}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object v0, p0, Landroidx/preference/PreferenceGroup;->ـᵎ:Lיـ/ﹳᐧ;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/preference/PreferenceGroup;->ʽᵔ:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/PreferenceGroup;->י:Z

    iput p4, p0, Landroidx/preference/PreferenceGroup;->ʾˊ:I

    iput-boolean p4, p0, Landroidx/preference/PreferenceGroup;->ˑ:Z

    const v1, 0x7fffffff

    iput v1, p0, Landroidx/preference/PreferenceGroup;->ʼـ:I

    new-instance v2, Landroidx/leanback/widget/ᵔʾ;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Landroidx/preference/PreferenceGroup;->ˎᐧ:Landroidx/leanback/widget/ᵔʾ;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    sget-object v2, Lʻᐧ/ᴵˊ;->ʼˎ:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/PreferenceGroup;->י:Z

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, v1, :cond_0

    iget-object p3, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    const-string p4, " should have a key defined if it contains an expandable preference"

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "PreferenceGroup"

    nop

    :cond_0
    iput p2, p0, Landroidx/preference/PreferenceGroup;->ʼـ:I

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final ʼᐧ()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroidx/preference/Preference;->ˊʻ()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/PreferenceGroup;->ˑ:Z

    iget-object v1, p0, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->ᵎⁱ(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->ʼᐧ()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ʽ(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-super {p0, p1}, Landroidx/preference/Preference;->ʽ(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->ᵎⁱ(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->ʽ(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ˉٴ(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 4

    .prologue
    if-eqz p1, :cond_4

    iget-object v0, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->ᵎⁱ(I)Landroidx/preference/Preference;

    move-result-object v2

    iget-object v3, v2, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceGroup;->ˉٴ(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final יـ()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroidx/preference/Preference;->יـ()Landroid/os/Parcelable;

    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    new-instance v0, Lʻᐧ/ʽﹳ;

    iget v1, p0, Landroidx/preference/PreferenceGroup;->ʼـ:I

    invoke-direct {v0, v1}, Lʻᐧ/ʽﹳ;-><init>(I)V

    return-object v0
.end method

.method public final ٴʼ()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->ᵎˊ(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/preference/Preference;->ˈˏ:Lʻᐧ/ـˆ;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lʻᐧ/ـˆ;->ᵔᵢ:Landroid/os/Handler;

    iget-object v0, v0, Lʻᐧ/ـˆ;->ʼˎ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ٴᵢ(Landroidx/preference/Preference;)V
    .locals 6

    .prologue
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Landroidx/preference/Preference;->ﹳﹳ:Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->ˉٴ(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "PreferenceGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found duplicated key: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\". This can cause unintended behaviour, please use unique keys for every preference."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_2
    iget v0, p1, Landroidx/preference/Preference;->ˉٴ:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Landroidx/preference/PreferenceGroup;->י:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/preference/PreferenceGroup;->ʾˊ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/preference/PreferenceGroup;->ʾˊ:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->ᵢˏ(I)V

    :cond_3
    instance-of v0, p1, Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iget-boolean v1, p0, Landroidx/preference/PreferenceGroup;->י:Z

    iput-boolean v1, v0, Landroidx/preference/PreferenceGroup;->י:Z

    :cond_4
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_5

    mul-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->ˈٴ()Z

    move-result v2

    iget-boolean v3, p1, Landroidx/preference/Preference;->ˉـ:Z

    if-ne v3, v2, :cond_6

    xor-int/2addr v2, v1

    iput-boolean v2, p1, Landroidx/preference/Preference;->ˉـ:Z

    invoke-virtual {p1}, Landroidx/preference/Preference;->ˈٴ()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->ٴﹶ(Z)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->ˆʾ()V

    :cond_6
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    iget-object v2, p1, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p0, Landroidx/preference/PreferenceGroup;->ـᵎ:Lיـ/ﹳᐧ;

    invoke-virtual {v3, v2}, Lיـ/ﹳᐧ;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroidx/preference/PreferenceGroup;->ـᵎ:Lיـ/ﹳᐧ;

    invoke-virtual {v3, v2}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Landroidx/preference/PreferenceGroup;->ـᵎ:Lיـ/ﹳᐧ;

    invoke-virtual {v5, v2}, Lיـ/ﹳᐧ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lʻᐧ/ʼʼ;->ʽ()J

    move-result-wide v3

    :goto_1
    iput-wide v3, p1, Landroidx/preference/Preference;->ˈٴ:J

    iput-boolean v1, p1, Landroidx/preference/Preference;->ᴵᵔ:Z

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->ˉʿ(Lʻᐧ/ʼʼ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v1, p1, Landroidx/preference/Preference;->ᴵᵔ:Z

    iget-object v0, p1, Landroidx/preference/Preference;->ﹳﹳ:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_a

    iput-object p0, p1, Landroidx/preference/Preference;->ﹳﹳ:Landroidx/preference/PreferenceGroup;

    iget-boolean v0, p0, Landroidx/preference/PreferenceGroup;->ˑ:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroidx/preference/Preference;->ﾞʻ()V

    :cond_8
    iget-object p1, p0, Landroidx/preference/Preference;->ˈˏ:Lʻᐧ/ـˆ;

    if-eqz p1, :cond_9

    iget-object v0, p1, Lʻᐧ/ـˆ;->ᵔᵢ:Landroid/os/Handler;

    iget-object p1, p1, Lʻᐧ/ـˆ;->ʼˎ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_2
    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This preference already has a parent. You must remove the existing parent before assigning a new one."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception v0

    iput-boolean v1, p1, Landroidx/preference/Preference;->ᴵᵔ:Z

    throw v0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final ٴﹶ(Z)V
    .locals 4

    .prologue
    invoke-super {p0, p1}, Landroidx/preference/Preference;->ٴﹶ(Z)V

    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->ᵎⁱ(I)Landroidx/preference/Preference;

    move-result-object v2

    iget-boolean v3, v2, Landroidx/preference/Preference;->ˉـ:Z

    if-ne v3, p1, :cond_0

    xor-int/lit8 v3, p1, 0x1

    iput-boolean v3, v2, Landroidx/preference/Preference;->ˉـ:Z

    invoke-virtual {v2}, Landroidx/preference/Preference;->ˈٴ()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->ٴﹶ(Z)V

    invoke-virtual {v2}, Landroidx/preference/Preference;->ˆʾ()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ᵎˊ(Landroidx/preference/Preference;)Z
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->ˊʻ()V

    iget-object v0, p1, Landroidx/preference/Preference;->ﹳﹳ:Landroidx/preference/PreferenceGroup;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/preference/Preference;->ﹳﹳ:Landroidx/preference/PreferenceGroup;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p1, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->ـᵎ:Lיـ/ﹳᐧ;

    invoke-virtual {p1}, Landroidx/preference/Preference;->ˑﹳ()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/preference/PreferenceGroup;->ʽᵔ:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->ˎᐧ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroidx/preference/PreferenceGroup;->ʽᵔ:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->ˎᐧ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-boolean v1, p0, Landroidx/preference/PreferenceGroup;->ˑ:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->ʼᐧ()V

    :cond_2
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ᵎⁱ(I)Landroidx/preference/Preference;
    .locals 1

    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    return-object p1
.end method

.method public final ⁱˊ(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-super {p0, p1}, Landroidx/preference/Preference;->ⁱˊ(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->ᵎⁱ(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->ⁱˊ(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ﹳᐧ(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lʻᐧ/ʽﹳ;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->ﹳᐧ(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lʻᐧ/ʽﹳ;

    iget v0, p1, Lʻᐧ/ʽﹳ;->ʾˋ:I

    iput v0, p0, Landroidx/preference/PreferenceGroup;->ʼـ:I

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->ﹳᐧ(Landroid/os/Parcelable;)V

    return-void
.end method

.method public final ﾞʻ()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroidx/preference/Preference;->ﾞʻ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/PreferenceGroup;->ˑ:Z

    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->ᵎⁱ(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->ﾞʻ()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
