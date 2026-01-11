.class public final Lʻᐧ/ـˆ;
.super Lˋˋ/ᴵˑ;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Landroidx/leanback/widget/ᵔʾ;

.field public final ˈ:Landroidx/preference/PreferenceGroup;

.field public ˑﹳ:Ljava/util/ArrayList;

.field public final ᵎﹶ:Ljava/util/ArrayList;

.field public final ᵔᵢ:Landroid/os/Handler;

.field public ﾞᴵ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Lˋˋ/ᴵˑ;-><init>()V

    new-instance v0, Landroidx/leanback/widget/ᵔʾ;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lʻᐧ/ـˆ;->ʼˎ:Landroidx/leanback/widget/ᵔʾ;

    iput-object p1, p0, Lʻᐧ/ـˆ;->ˈ:Landroidx/preference/PreferenceGroup;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lʻᐧ/ـˆ;->ᵔᵢ:Landroid/os/Handler;

    iput-object p0, p1, Landroidx/preference/Preference;->ˈˏ:Lʻᐧ/ـˆ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lʻᐧ/ـˆ;->ˑﹳ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lʻᐧ/ـˆ;->ﾞᴵ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lʻᐧ/ـˆ;->ᵎﹶ:Ljava/util/ArrayList;

    instance-of v0, p1, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iget-boolean p1, p1, Landroidx/preference/PreferenceScreen;->יﹳ:Z

    invoke-virtual {p0, p1}, Lˋˋ/ᴵˑ;->ﾞʻ(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lˋˋ/ᴵˑ;->ﾞʻ(Z)V

    :goto_0
    invoke-virtual {p0}, Lʻᐧ/ـˆ;->ﹳᐧ()V

    return-void
.end method


# virtual methods
.method public final ʼᐧ(I)Landroidx/preference/Preference;
    .locals 1

    .prologue
    if-ltz p1, :cond_1

    iget-object v0, p0, Lʻᐧ/ـˆ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lʻᐧ/ـˆ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ʽ(I)I
    .locals 3

    .prologue
    invoke-virtual {p0, p1}, Lʻᐧ/ـˆ;->ʼᐧ(I)Landroidx/preference/Preference;

    move-result-object p1

    new-instance v0, Lʻᐧ/ʻٴ;

    invoke-direct {v0, p1}, Lʻᐧ/ʻٴ;-><init>(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lʻᐧ/ـˆ;->ᵎﹶ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public final ˉˆ(Ljava/util/ArrayList;Landroidx/preference/PreferenceGroup;)V
    .locals 5

    .prologue
    monitor-enter p2

    :try_start_0
    iget-object v0, p2, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p2, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->ᵎⁱ(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lʻᐧ/ʻٴ;

    invoke-direct {v3, v2}, Lʻᐧ/ʻٴ;-><init>(Landroidx/preference/Preference;)V

    iget-object v4, p0, Lʻᐧ/ـˆ;->ᵎﹶ:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lʻᐧ/ـˆ;->ᵎﹶ:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroidx/preference/PreferenceGroup;

    instance-of v4, v3, Landroidx/preference/PreferenceScreen;

    if-nez v4, :cond_1

    invoke-virtual {p0, p1, v3}, Lʻᐧ/ـˆ;->ˉˆ(Ljava/util/ArrayList;Landroidx/preference/PreferenceGroup;)V

    :cond_1
    iput-object p0, v2, Landroidx/preference/Preference;->ˈˏ:Lʻᐧ/ـˆ;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ᵔʾ(Landroidx/preference/PreferenceGroup;)Ljava/util/ArrayList;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const v8, 0x7fffffff

    if-ge v6, v4, :cond_a

    invoke-virtual {v1, v6}, Landroidx/preference/PreferenceGroup;->ᵎⁱ(I)Landroidx/preference/Preference;

    move-result-object v9

    iget-boolean v10, v9, Landroidx/preference/Preference;->ʿ:Z

    if-nez v10, :cond_0

    goto :goto_7

    :cond_0
    iget v10, v1, Landroidx/preference/PreferenceGroup;->ʼـ:I

    if-eq v10, v8, :cond_2

    if-ge v7, v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    instance-of v10, v9, Landroidx/preference/PreferenceGroup;

    if-nez v10, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_3
    check-cast v9, Landroidx/preference/PreferenceGroup;

    instance-of v10, v9, Landroidx/preference/PreferenceScreen;

    if-eqz v10, :cond_4

    goto :goto_7

    :cond_4
    iget v10, v1, Landroidx/preference/PreferenceGroup;->ʼـ:I

    if-eq v10, v8, :cond_6

    iget v10, v9, Landroidx/preference/PreferenceGroup;->ʼـ:I

    if-ne v10, v8, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nesting an expandable group inside of another expandable group is not supported!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_3
    invoke-virtual {v0, v9}, Lʻᐧ/ـˆ;->ᵔʾ(Landroidx/preference/PreferenceGroup;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_9

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Landroidx/preference/Preference;

    iget v13, v1, Landroidx/preference/PreferenceGroup;->ʼـ:I

    if-eq v13, v8, :cond_8

    if-ge v7, v13, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_a
    iget v4, v1, Landroidx/preference/PreferenceGroup;->ʼـ:I

    if-eq v4, v8, :cond_10

    if-le v7, v4, :cond_10

    new-instance v4, Lʻᐧ/ˑﹳ;

    iget-object v6, v1, Landroidx/preference/Preference;->ʾˋ:Landroid/content/Context;

    iget-wide v7, v1, Landroidx/preference/Preference;->ˈٴ:J

    const/4 v9, 0x0

    invoke-direct {v4, v6, v9}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v6, 0x7f0e0042

    iput v6, v4, Landroidx/preference/Preference;->ˊᵔ:I

    iget-object v6, v4, Landroidx/preference/Preference;->ʾˋ:Landroid/content/Context;

    const v10, 0x7f080116

    invoke-static {v6, v10}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroidx/preference/Preference;->ʾᵎ(Landroid/graphics/drawable/Drawable;)V

    iput v10, v4, Landroidx/preference/Preference;->ᵎˊ:I

    const v10, 0x7f1300c6

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroidx/preference/Preference;->ᴵˊ(Ljava/lang/CharSequence;)V

    const/16 v10, 0x3e7

    invoke-virtual {v4, v10}, Landroidx/preference/Preference;->ᵢˏ(I)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :cond_b
    :goto_8
    if-ge v12, v11, :cond_f

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Landroidx/preference/Preference;

    iget-object v14, v13, Landroidx/preference/Preference;->ᵎⁱ:Ljava/lang/CharSequence;

    instance-of v15, v13, Landroidx/preference/PreferenceGroup;

    if-eqz v15, :cond_c

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    const/16 v16, 0x0

    move-object v5, v13

    check-cast v5, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    const/16 v16, 0x0

    :goto_9
    iget-object v5, v13, Landroidx/preference/Preference;->ﹳﹳ:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-eqz v15, :cond_b

    check-cast v13, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    if-nez v9, :cond_e

    move-object v9, v14

    goto :goto_8

    :cond_e
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v9, v5, v16

    const/4 v9, 0x1

    aput-object v14, v5, v9

    const v9, 0x7f1303fa

    invoke-virtual {v6, v9, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto :goto_8

    :cond_f
    invoke-virtual {v4, v9}, Landroidx/preference/Preference;->ʾˋ(Ljava/lang/CharSequence;)V

    const-wide/32 v5, 0xf4240

    add-long/2addr v7, v5

    iput-wide v7, v4, Lʻᐧ/ˑﹳ;->ـᵎ:J

    new-instance v3, Lﹶﾞ/ⁱי;

    const/4 v5, 0x3

    invoke-direct {v3, v0, v5, v1}, Lﹶﾞ/ⁱי;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object v3, v4, Landroidx/preference/Preference;->ٴᵢ:Lﹶﾞ/ⁱי;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-object v2
.end method

.method public final ᵔᵢ(Landroid/view/ViewGroup;I)Lˋˋ/ʼـ;
    .locals 5

    .prologue
    iget-object v0, p0, Lʻᐧ/ـˆ;->ᵎﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lʻᐧ/ʻٴ;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lʻᐧ/ᴵˊ;->ﹳٴ:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1080062

    invoke-static {v3, v4}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget v1, p2, Lʻᐧ/ʻٴ;->ﹳٴ:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v1, 0x1020018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget p2, p2, Lʻᐧ/ʻٴ;->ⁱˊ:I

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_2
    const/16 p2, 0x8

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    new-instance p2, Lʻᐧ/ʾˋ;

    invoke-direct {p2, p1}, Lʻᐧ/ʾˋ;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final ᵔﹳ(Ljava/lang/String;)I
    .locals 3

    .prologue
    iget-object v0, p0, Lʻᐧ/ـˆ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lʻᐧ/ـˆ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    iget-object v2, v2, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final ⁱˊ(I)J
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˋˋ/ᴵˑ;->ⁱˊ:Z

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lʻᐧ/ـˆ;->ʼᐧ(I)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->ˑﹳ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ﹳٴ()I
    .locals 1

    iget-object v0, p0, Lʻᐧ/ـˆ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final ﹳᐧ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lʻᐧ/ـˆ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroidx/preference/Preference;

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/preference/Preference;->ˈˏ:Lʻᐧ/ـˆ;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lʻᐧ/ـˆ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lʻᐧ/ـˆ;->ˑﹳ:Ljava/util/ArrayList;

    iget-object v0, p0, Lʻᐧ/ـˆ;->ˈ:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v1, v0}, Lʻᐧ/ـˆ;->ˉˆ(Ljava/util/ArrayList;Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {p0, v0}, Lʻᐧ/ـˆ;->ᵔʾ(Landroidx/preference/PreferenceGroup;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lʻᐧ/ـˆ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lˋˋ/ᴵˑ;->ˈ()V

    iget-object v0, p0, Lʻᐧ/ـˆ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final ﾞᴵ(Lˋˋ/ʼـ;I)V
    .locals 4

    .prologue
    check-cast p1, Lʻᐧ/ʾˋ;

    invoke-virtual {p0, p2}, Lʻᐧ/ـˆ;->ʼᐧ(I)Landroidx/preference/Preference;

    move-result-object p2

    iget-object v0, p1, Lʻᐧ/ʾˋ;->ˈⁱ:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p1, Lʻᐧ/ʾˋ;->ﹳـ:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_0

    sget-object v2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Lʻᐧ/ʾˋ;->יـ(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->ᵔʾ(Lʻᐧ/ʾˋ;)V

    return-void
.end method
