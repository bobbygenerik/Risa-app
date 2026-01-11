.class public final Lˉˆ/ʼᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ʼˎ:Lˉˆ/ʼᵢ;

.field public static final ˆʾ:Lˉˆ/ʽˑ;

.field public static final ᵔᵢ:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public ʽ:Lיـ/יـ;

.field public final ˈ:Ljava/util/WeakHashMap;

.field public ˑﹳ:Landroid/util/TypedValue;

.field public ᵎﹶ:Lﹳʽ/ᴵᵔ;

.field public ⁱˊ:Lיـ/ﹳᐧ;

.field public ﹳٴ:Ljava/util/WeakHashMap;

.field public ﾞᴵ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lˉˆ/ʼᵢ;->ᵔᵢ:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Lˉˆ/ʽˑ;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lˋˋ/ـˊ;-><init>(I)V

    sput-object v0, Lˉˆ/ʼᵢ;->ˆʾ:Lˉˆ/ʽˑ;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lˉˆ/ʼᵢ;->ˈ:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static ˆʾ(Lˉˆ/ʼᵢ;)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    new-instance v0, Lˉˆ/ˋˊ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lˉˆ/ˋˊ;-><init>(I)V

    const-string v1, "vector"

    invoke-virtual {p0, v1, v0}, Lˉˆ/ʼᵢ;->ﹳٴ(Ljava/lang/String;Lˉˆ/ˋˊ;)V

    new-instance v0, Lˉˆ/ˋˊ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lˉˆ/ˋˊ;-><init>(I)V

    const-string v1, "animated-vector"

    invoke-virtual {p0, v1, v0}, Lˉˆ/ʼᵢ;->ﹳٴ(Ljava/lang/String;Lˉˆ/ˋˊ;)V

    new-instance v0, Lˉˆ/ˋˊ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˉˆ/ˋˊ;-><init>(I)V

    const-string v1, "animated-selector"

    invoke-virtual {p0, v1, v0}, Lˉˆ/ʼᵢ;->ﹳٴ(Ljava/lang/String;Lˉˆ/ˋˊ;)V

    new-instance v0, Lˉˆ/ˋˊ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lˉˆ/ˋˊ;-><init>(I)V

    const-string v1, "drawable"

    invoke-virtual {p0, v1, v0}, Lˉˆ/ʼᵢ;->ﹳٴ(Ljava/lang/String;Lˉˆ/ˋˊ;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized ˈ()Lˉˆ/ʼᵢ;
    .locals 2

    .prologue
    const-class v0, Lˉˆ/ʼᵢ;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lˉˆ/ʼᵢ;->ʼˎ:Lˉˆ/ʼᵢ;

    if-nez v1, :cond_0

    new-instance v1, Lˉˆ/ʼᵢ;

    invoke-direct {v1}, Lˉˆ/ʼᵢ;-><init>()V

    sput-object v1, Lˉˆ/ʼᵢ;->ʼˎ:Lˉˆ/ʼᵢ;

    invoke-static {v1}, Lˉˆ/ʼᵢ;->ˆʾ(Lˉˆ/ʼᵢ;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lˉˆ/ʼᵢ;->ʼˎ:Lˉˆ/ʼᵢ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized ᵔᵢ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 4

    .prologue
    const-class v0, Lˉˆ/ʼᵢ;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lˉˆ/ʼᵢ;->ˆʾ:Lˉˆ/ʽˑ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x1f

    add-int v3, v2, p0

    mul-int/2addr v3, v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lˋˋ/ـˊ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PorterDuffColorFilter;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Lˋˋ/ـˊ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized ʼˎ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lˉˆ/ʼᵢ;->ﹳٴ:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lיـ/יـ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lיـ/יـ;->ˈ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_5

    iget-object v0, p0, Lˉˆ/ʼᵢ;->ᵎﹶ:Lﹳʽ/ᴵᵔ;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lﹳʽ/ᴵᵔ;->ˉʿ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lˉˆ/ʼᵢ;->ﹳٴ:Ljava/util/WeakHashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lˉˆ/ʼᵢ;->ﹳٴ:Ljava/util/WeakHashMap;

    :cond_2
    iget-object v0, p0, Lˉˆ/ʼᵢ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lיـ/יـ;

    if-nez v0, :cond_3

    new-instance v0, Lיـ/יـ;

    invoke-direct {v0}, Lיـ/יـ;-><init>()V

    iget-object v2, p0, Lˉˆ/ʼᵢ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0, p2, v1}, Lיـ/יـ;->ﹳٴ(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    :goto_2
    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ʽ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    iget-object v0, p0, Lˉˆ/ʼᵢ;->ˑﹳ:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lˉˆ/ʼᵢ;->ˑﹳ:Landroid/util/TypedValue;

    :cond_0
    iget-object v0, p0, Lˉˆ/ʼᵢ;->ˑﹳ:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v3, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long v5, v1

    or-long/2addr v3, v5

    invoke-virtual {p0, p1, v3, v4}, Lˉˆ/ʼᵢ;->ˑﹳ(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lˉˆ/ʼᵢ;->ᵎﹶ:Lﹳʽ/ᴵᵔ;

    const/4 v5, 0x0

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const v1, 0x7f080041

    if-ne p2, v1, :cond_3

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const p2, 0x7f080040

    invoke-virtual {p0, p1, p2}, Lˉˆ/ʼᵢ;->ﾞᴵ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const v1, 0x7f080042

    invoke-virtual {p0, p1, v1}, Lˉˆ/ʼᵢ;->ﾞᴵ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    aput-object v1, v6, v2

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    const v1, 0x7f080064

    if-ne p2, v1, :cond_4

    const p2, 0x7f07003b

    invoke-static {p0, p1, p2}, Lﹳʽ/ᴵᵔ;->ٴﹶ(Lˉˆ/ʼᵢ;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v5

    goto :goto_0

    :cond_4
    const v1, 0x7f080063

    if-ne p2, v1, :cond_5

    const p2, 0x7f07003c

    invoke-static {p0, p1, p2}, Lﹳʽ/ᴵᵔ;->ٴﹶ(Lˉˆ/ʼᵢ;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v5

    goto :goto_0

    :cond_5
    const v1, 0x7f080065

    if-ne p2, v1, :cond_6

    const p2, 0x7f07003d

    invoke-static {p0, p1, p2}, Lﹳʽ/ᴵᵔ;->ٴﹶ(Lˉˆ/ʼᵢ;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v5

    :cond_6
    :goto_0
    if-eqz v5, :cond_7

    iget p2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-virtual {p0, p1, v3, v4, v5}, Lˉˆ/ʼᵢ;->ⁱˊ(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    :cond_7
    return-object v5
.end method

.method public final declared-synchronized ˉʿ(Lﹳʽ/ᴵᵔ;)V
    .locals 0

    .prologue
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lˉˆ/ʼᵢ;->ᵎﹶ:Lﹳʽ/ᴵᵔ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ˑﹳ(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lˉˆ/ʼᵢ;->ˈ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lיـ/ʼˎ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lיـ/ʼˎ;->ˑﹳ(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object p1, v0, Lיـ/ʼˎ;->ᴵˊ:[J

    iget v2, v0, Lיـ/ʼˎ;->ˈٴ:I

    invoke-static {p1, v2, p2, p3}, Lˏי/ﹳٴ;->ⁱˊ([JIJ)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p2, v0, Lיـ/ʼˎ;->ʽʽ:[Ljava/lang/Object;

    aget-object p3, p2, p1

    sget-object v2, Lיـ/ˆʾ;->ﹳٴ:Ljava/lang/Object;

    if-eq p3, v2, :cond_2

    aput-object v2, p2, p1

    const/4 p1, 0x1

    iput-boolean p1, v0, Lיـ/ʼˎ;->ʾˋ:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v1

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final ٴﹶ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    iget-object v0, p0, Lˉˆ/ʼᵢ;->ⁱˊ:Lיـ/ﹳᐧ;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lיـ/ﹳᐧ;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lˉˆ/ʼᵢ;->ʽ:Lיـ/יـ;

    const-string v1, "appcompat_skip_skip"

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lיـ/יـ;->ˈ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v0, :cond_1

    iget-object v2, p0, Lˉˆ/ʼᵢ;->ⁱˊ:Lיـ/ﹳᐧ;

    invoke-virtual {v2, v0}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_0
    new-instance v0, Lיـ/יـ;

    invoke-direct {v0}, Lיـ/יـ;-><init>()V

    iput-object v0, p0, Lˉˆ/ʼᵢ;->ʽ:Lיـ/יـ;

    :cond_1
    iget-object v0, p0, Lˉˆ/ʼᵢ;->ˑﹳ:Landroid/util/TypedValue;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lˉˆ/ʼᵢ;->ˑﹳ:Landroid/util/TypedValue;

    :cond_2
    iget-object v0, p0, Lˉˆ/ʼᵢ;->ˑﹳ:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v4, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    iget v6, v0, Landroid/util/TypedValue;->data:I

    int-to-long v6, v6

    or-long/2addr v4, v6

    invoke-virtual {p0, p1, v4, v5}, Lˉˆ/ʼᵢ;->ˑﹳ(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    return-object v6

    :cond_3
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    :try_start_0
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    if-eq v8, v3, :cond_4

    goto :goto_0

    :cond_4
    if-ne v8, v9, :cond_6

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lˉˆ/ʼᵢ;->ʽ:Lיـ/יـ;

    invoke-virtual {v8, p2, v3}, Lיـ/יـ;->ﹳٴ(ILjava/lang/Object;)V

    iget-object v8, p0, Lˉˆ/ʼᵢ;->ⁱˊ:Lיـ/ﹳᐧ;

    invoke-virtual {v8, v3}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˉˆ/ˋˊ;

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v3, p1, v2, v7, v8}, Lˉˆ/ˋˊ;->ﹳٴ(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_5
    :goto_1
    if-eqz v6, :cond_7

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-virtual {p0, p1, v4, v5, v6}, Lˉˆ/ʼᵢ;->ⁱˊ(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v0, "ResourceManagerInternal"

    const-string v2, "Exception while inflating drawable"

    nop

    :cond_7
    :goto_3
    if-nez v6, :cond_8

    iget-object p1, p0, Lˉˆ/ʼᵢ;->ʽ:Lיـ/יـ;

    invoke-virtual {p1, p2, v1}, Lיـ/יـ;->ﹳٴ(ILjava/lang/Object;)V

    :cond_8
    return-object v6

    :cond_9
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final declared-synchronized ᵎﹶ(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lˉˆ/ʼᵢ;->ﾞᴵ:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˉˆ/ʼᵢ;->ﾞᴵ:Z

    const v0, 0x7f08007f

    invoke-virtual {p0, p1, v0}, Lˉˆ/ʼᵢ;->ﾞᴵ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Lʻˈ/ﹳᐧ;

    if-nez v1, :cond_1

    const-string v1, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lˉˆ/ʼᵢ;->ٴﹶ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lˉˆ/ʼᵢ;->ʽ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2, p3, v0}, Lˉˆ/ʼᵢ;->ᵔʾ(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {v0}, Lˉˆ/ٴﹳ;->ﹳٴ(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-object v0

    :cond_6
    const/4 p1, 0x0

    :try_start_1
    iput-boolean p1, p0, Lˉˆ/ʼᵢ;->ﾞᴵ:Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ᵔʾ(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    invoke-virtual {p0, p1, p2}, Lˉˆ/ʼᵢ;->ʼˎ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object p3, p0, Lˉˆ/ʼᵢ;->ᵎﹶ:Lﹳʽ/ᴵᵔ;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const p3, 0x7f080072

    if-ne p2, p3, :cond_1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-object p1

    :cond_3
    iget-object v0, p0, Lˉˆ/ʼᵢ;->ᵎﹶ:Lﹳʽ/ᴵᵔ;

    if-eqz v0, :cond_6

    const v0, 0x7f08006d

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    const v5, 0x7f040139

    const v6, 0x7f04013b

    if-ne p2, v0, :cond_4

    move-object p2, p4

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p1, v6}, Lˉˆ/ˎˉ;->ʽ(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lˉˆ/ˏי;->ⁱˊ:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v0, v1}, Lﹳʽ/ᴵᵔ;->יـ(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p1, v6}, Lˉˆ/ˎˉ;->ʽ(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p3, v0, v1}, Lﹳʽ/ᴵᵔ;->יـ(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, v5}, Lˉˆ/ˎˉ;->ʽ(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p2, p1, v1}, Lﹳʽ/ᴵᵔ;->יـ(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return-object p4

    :cond_4
    const v0, 0x7f080064

    if-eq p2, v0, :cond_5

    const v0, 0x7f080063

    if-eq p2, v0, :cond_5

    const v0, 0x7f080065

    if-ne p2, v0, :cond_6

    :cond_5
    move-object p2, p4

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p1, v6}, Lˉˆ/ˎˉ;->ⁱˊ(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lˉˆ/ˏי;->ⁱˊ:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v0, v1}, Lﹳʽ/ᴵᵔ;->יـ(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p1, v5}, Lˉˆ/ˎˉ;->ʽ(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p3, v0, v1}, Lﹳʽ/ᴵᵔ;->יـ(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, v5}, Lˉˆ/ˎˉ;->ʽ(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p2, p1, v1}, Lﹳʽ/ᴵᵔ;->יـ(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return-object p4

    :cond_6
    iget-object v0, p0, Lˉˆ/ʼᵢ;->ᵎﹶ:Lﹳʽ/ᴵᵔ;

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    sget-object v3, Lˉˆ/ˏי;->ⁱˊ:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, v0, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, [I

    invoke-static {v4, p2}, Lﹳʽ/ᴵᵔ;->ˈ([II)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v4, :cond_7

    const p2, 0x7f04013b

    :goto_1
    move v4, v5

    :goto_2
    move v0, v6

    goto :goto_4

    :cond_7
    iget-object v4, v0, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, [I

    invoke-static {v4, p2}, Lﹳʽ/ᴵᵔ;->ˈ([II)Z

    move-result v4

    if-eqz v4, :cond_8

    const p2, 0x7f040139

    goto :goto_1

    :cond_8
    iget-object v0, v0, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p2}, Lﹳʽ/ᴵᵔ;->ˈ([II)Z

    move-result v0

    const v4, 0x1010031

    if-eqz v0, :cond_9

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :goto_3
    move p2, v4

    goto :goto_1

    :cond_9
    const v0, 0x7f080056

    if-ne p2, v0, :cond_a

    const p2, 0x42233333    # 40.8f

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const v0, 0x1010030

    move v4, v0

    move v0, p2

    move p2, v4

    move v4, v5

    goto :goto_4

    :cond_a
    const v0, 0x7f080044

    if-ne p2, v0, :cond_b

    goto :goto_3

    :cond_b
    move p2, v2

    move v4, p2

    goto :goto_2

    :goto_4
    if-eqz v4, :cond_d

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p1, p2}, Lˉˆ/ˎˉ;->ʽ(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1, v3}, Lˉˆ/ˏי;->ʽ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v0, v6, :cond_c

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_c
    move v2, v5

    :cond_d
    if-nez v2, :cond_e

    if-eqz p3, :cond_e

    return-object v1

    :cond_e
    return-object p4
.end method

.method public final declared-synchronized ⁱˊ(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object v0, p0, Lˉˆ/ʼᵢ;->ˈ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lיـ/ʼˎ;

    if-nez v0, :cond_0

    new-instance v0, Lיـ/ʼˎ;

    invoke-direct {v0}, Lיـ/ʼˎ;-><init>()V

    iget-object v1, p0, Lˉˆ/ʼᵢ;->ˈ:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Lיـ/ʼˎ;->ʼˎ(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ﹳٴ(Ljava/lang/String;Lˉˆ/ˋˊ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˉˆ/ʼᵢ;->ⁱˊ:Lיـ/ﹳᐧ;

    if-nez v0, :cond_0

    new-instance v0, Lיـ/ﹳᐧ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object v0, p0, Lˉˆ/ʼᵢ;->ⁱˊ:Lיـ/ﹳᐧ;

    :cond_0
    iget-object v0, p0, Lˉˆ/ʼᵢ;->ⁱˊ:Lיـ/ﹳᐧ;

    invoke-virtual {v0, p1, p2}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final declared-synchronized ﾞʻ(Landroid/content/Context;)V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lˉˆ/ʼᵢ;->ˈ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lיـ/ʼˎ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lיـ/ʼˎ;->ⁱˊ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ﾞᴵ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lˉˆ/ʼᵢ;->ᵎﹶ(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
