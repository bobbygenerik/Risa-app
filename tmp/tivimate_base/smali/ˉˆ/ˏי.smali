.class public final Lˉˆ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ʽ:Lˉˆ/ˏי;

.field public static final ⁱˊ:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public ﹳٴ:Lˉˆ/ʼᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lˉˆ/ˏי;->ⁱˊ:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public static declared-synchronized ʽ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .prologue
    const-class v0, Lˉˆ/ˏי;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lˉˆ/ʼᵢ;->ᵔᵢ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized ˈ()V
    .locals 7

    .prologue
    const-class v0, Lˉˆ/ˏי;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lˉˆ/ˏי;->ʽ:Lˉˆ/ˏי;

    if-nez v1, :cond_0

    new-instance v1, Lˉˆ/ˏי;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lˉˆ/ˏי;->ʽ:Lˉˆ/ˏי;

    invoke-static {}, Lˉˆ/ʼᵢ;->ˈ()Lˉˆ/ʼᵢ;

    move-result-object v2

    iput-object v2, v1, Lˉˆ/ˏי;->ﹳٴ:Lˉˆ/ʼᵢ;

    sget-object v1, Lˉˆ/ˏי;->ʽ:Lˉˆ/ˏי;

    iget-object v1, v1, Lˉˆ/ˏי;->ﹳٴ:Lˉˆ/ʼᵢ;

    new-instance v2, Lﹳʽ/ᴵᵔ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const v3, 0x7f08007b

    const v4, 0x7f080031

    const v5, 0x7f08007d

    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    iput-object v3, v2, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    const/4 v3, 0x7

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    iput-object v4, v2, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    iput-object v3, v2, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    const v3, 0x7f080040

    const v4, 0x7f080061

    const v5, 0x7f080062

    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    iput-object v3, v2, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    const v3, 0x7f080074

    const v4, 0x7f08007e

    filled-new-array {v3, v4}, [I

    move-result-object v3

    iput-object v3, v2, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    const v3, 0x7f080035

    const v4, 0x7f08003b

    const v5, 0x7f080034

    const v6, 0x7f08003a

    filled-new-array {v5, v6, v3, v4}, [I

    move-result-object v3

    iput-object v3, v2, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lˉˆ/ʼᵢ;->ˉʿ(Lﹳʽ/ᴵᵔ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :array_0
    .array-data 4
        0x7f080049
        0x7f08006c
        0x7f080050
        0x7f08004b
        0x7f08004c
        0x7f08004f
        0x7f08004e
    .end array-data

    :array_1
    .array-data 4
        0x7f08007a
        0x7f08007c
        0x7f080042
        0x7f080076
        0x7f080077
        0x7f080078
        0x7f080079
    .end array-data
.end method

.method public static ˑﹳ(Landroid/graphics/drawable/Drawable;Lˉˆ/ᵢˋ;[I)V
    .locals 4

    .prologue
    sget-object v0, Lˉˆ/ʼᵢ;->ᵔᵢ:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p0, :cond_8

    instance-of v1, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v2, [I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-boolean v0, p1, Lˉˆ/ᵢˋ;->ⁱˊ:Z

    if-nez v0, :cond_2

    iget-boolean v1, p1, Lˉˆ/ᵢˋ;->ﹳٴ:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_4

    :cond_2
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lˉˆ/ᵢˋ;->ʽ:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iget-boolean v3, p1, Lˉˆ/ᵢˋ;->ﹳٴ:Z

    if-eqz v3, :cond_4

    iget-object p1, p1, Lˉˆ/ᵢˋ;->ˈ:Ljava/io/Serializable;

    check-cast p1, Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_4
    sget-object p1, Lˉˆ/ʼᵢ;->ᵔᵢ:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, p2, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    invoke-static {p2, p1}, Lˉˆ/ʼᵢ;->ᵔᵢ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-gt p1, p2, :cond_7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_7
    return-void

    :cond_8
    const-string p0, "ResourceManagerInternal"

    const-string p1, "Mutated drawable is not the same instance as the input."

    nop

    return-void
.end method

.method public static declared-synchronized ﹳٴ()Lˉˆ/ˏי;
    .locals 2

    .prologue
    const-class v0, Lˉˆ/ˏי;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lˉˆ/ˏי;->ʽ:Lˉˆ/ˏי;

    if-nez v1, :cond_0

    invoke-static {}, Lˉˆ/ˏי;->ˈ()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lˉˆ/ˏי;->ʽ:Lˉˆ/ˏי;
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


# virtual methods
.method public final declared-synchronized ⁱˊ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lˉˆ/ˏי;->ﹳٴ:Lˉˆ/ʼᵢ;

    invoke-virtual {v0, p1, p2}, Lˉˆ/ʼᵢ;->ﾞᴵ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

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
