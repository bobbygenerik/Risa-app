.class public final Lcom/bumptech/glide/ˑﹳ;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field public static final ٴﹶ:Lcom/bumptech/glide/ﹳٴ;


# instance fields
.field public final ʼˎ:I

.field public final ʽ:Lᵎˉ/ⁱˊ;

.field public ˆʾ:Lⁱⁱ/ﾞᴵ;

.field public final ˈ:Lˋⁱ/ﾞᴵ;

.field public final ˑﹳ:Ljava/util/List;

.field public final ᵎﹶ:Lʿʾ/ˉʿ;

.field public final ᵔᵢ:Lﹳי/ʽ;

.field public final ⁱˊ:Lᴵˈ/ᵔᵢ;

.field public final ﹳٴ:Lיᐧ/ﾞᴵ;

.field public final ﾞᴵ:Lיـ/ˑﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/ﹳٴ;

    invoke-direct {v0}, Lcom/bumptech/glide/ˉˆ;-><init>()V

    sput-object v0, Lcom/bumptech/glide/ˑﹳ;->ٴﹶ:Lcom/bumptech/glide/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lיᐧ/ﾞᴵ;Lcom/bumptech/glide/ʼˎ;Lᵎˉ/ⁱˊ;Lˋⁱ/ﾞᴵ;Lיـ/ˑﹳ;Ljava/util/List;Lʿʾ/ˉʿ;Lﹳי/ʽ;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bumptech/glide/ˑﹳ;->ﹳٴ:Lיᐧ/ﾞᴵ;

    iput-object p4, p0, Lcom/bumptech/glide/ˑﹳ;->ʽ:Lᵎˉ/ⁱˊ;

    iput-object p5, p0, Lcom/bumptech/glide/ˑﹳ;->ˈ:Lˋⁱ/ﾞᴵ;

    iput-object p7, p0, Lcom/bumptech/glide/ˑﹳ;->ˑﹳ:Ljava/util/List;

    iput-object p6, p0, Lcom/bumptech/glide/ˑﹳ;->ﾞᴵ:Lיـ/ˑﹳ;

    iput-object p8, p0, Lcom/bumptech/glide/ˑﹳ;->ᵎﹶ:Lʿʾ/ˉʿ;

    iput-object p9, p0, Lcom/bumptech/glide/ˑﹳ;->ᵔᵢ:Lﹳי/ʽ;

    iput p10, p0, Lcom/bumptech/glide/ˑﹳ;->ʼˎ:I

    new-instance p1, Lᴵˈ/ᵔᵢ;

    invoke-direct {p1, p3}, Lᴵˈ/ᵔᵢ;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bumptech/glide/ˑﹳ;->ⁱˊ:Lᴵˈ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ()Lcom/bumptech/glide/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/ˑﹳ;->ⁱˊ:Lᴵˈ/ᵔᵢ;

    invoke-virtual {v0}, Lᴵˈ/ᵔᵢ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/ᵔᵢ;

    return-object v0
.end method

.method public final declared-synchronized ﹳٴ()Lⁱⁱ/ﾞᴵ;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/ˑﹳ;->ˆʾ:Lⁱⁱ/ﾞᴵ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/ˑﹳ;->ˈ:Lˋⁱ/ﾞᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lⁱⁱ/ﾞᴵ;

    invoke-direct {v0}, Lⁱⁱ/ﹳٴ;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lⁱⁱ/ﹳٴ;->ᵔٴ:Z

    iput-object v0, p0, Lcom/bumptech/glide/ˑﹳ;->ˆʾ:Lⁱⁱ/ﾞᴵ;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/ˑﹳ;->ˆʾ:Lⁱⁱ/ﾞᴵ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
