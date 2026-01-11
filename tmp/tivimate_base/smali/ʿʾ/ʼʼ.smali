.class public final Lʿʾ/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿʾ/ᵢˏ;
.implements Lˈﹳ/ⁱˊ;


# static fields
.field public static final ᴵᵔ:Lᵢ/ﹳٴ;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Lˈﹳ/ˑﹳ;

.field public ˈٴ:Z

.field public ᴵˊ:Lʿʾ/ᵢˏ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lٴﾞ/ˆʾ;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lٴﾞ/ˆʾ;-><init>(I)V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lˈﹳ/ˈ;->ﹳٴ(ILˈﹳ/ﹳٴ;)Lᵢ/ﹳٴ;

    move-result-object v0

    sput-object v0, Lʿʾ/ʼʼ;->ᴵᵔ:Lᵢ/ﹳٴ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˈﹳ/ˑﹳ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lʿʾ/ʼʼ;->ʾˋ:Lˈﹳ/ˑﹳ;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʿʾ/ʼʼ;->ᴵˊ:Lʿʾ/ᵢˏ;

    invoke-interface {v0}, Lʿʾ/ᵢˏ;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lʿʾ/ʼʼ;->ᴵˊ:Lʿʾ/ᵢˏ;

    invoke-interface {v0}, Lʿʾ/ᵢˏ;->ʽ()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized ˈ()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʿʾ/ʼʼ;->ʾˋ:Lˈﹳ/ˑﹳ;

    invoke-virtual {v0}, Lˈﹳ/ˑﹳ;->ﹳٴ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lʿʾ/ʼʼ;->ˈٴ:Z

    iget-boolean v0, p0, Lʿʾ/ʼʼ;->ʽʽ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lʿʾ/ʼʼ;->ᴵˊ:Lʿʾ/ᵢˏ;

    invoke-interface {v0}, Lʿʾ/ᵢˏ;->ˈ()V

    const/4 v0, 0x0

    iput-object v0, p0, Lʿʾ/ʼʼ;->ᴵˊ:Lʿʾ/ᵢˏ;

    sget-object v0, Lʿʾ/ʼʼ;->ᴵᵔ:Lᵢ/ﹳٴ;

    invoke-virtual {v0, p0}, Lᵢ/ﹳٴ;->ˑﹳ(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

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

    throw v0
.end method

.method public final declared-synchronized ˑﹳ()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʿʾ/ʼʼ;->ʾˋ:Lˈﹳ/ˑﹳ;

    invoke-virtual {v0}, Lˈﹳ/ˑﹳ;->ﹳٴ()V

    iget-boolean v0, p0, Lʿʾ/ʼʼ;->ʽʽ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lʿʾ/ʼʼ;->ʽʽ:Z

    iget-boolean v0, p0, Lʿʾ/ʼʼ;->ˈٴ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lʿʾ/ʼʼ;->ˈ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ⁱˊ()I
    .locals 1

    iget-object v0, p0, Lʿʾ/ʼʼ;->ᴵˊ:Lʿʾ/ᵢˏ;

    invoke-interface {v0}, Lʿʾ/ᵢˏ;->ⁱˊ()I

    move-result v0

    return v0
.end method

.method public final ﹳٴ()Lˈﹳ/ˑﹳ;
    .locals 1

    iget-object v0, p0, Lʿʾ/ʼʼ;->ʾˋ:Lˈﹳ/ˑﹳ;

    return-object v0
.end method
