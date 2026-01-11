.class public final Lˏ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʾﹳ/ⁱˊ;


# static fields
.field public static final ʽ:Lˊˋ/ⁱˊ;

.field public static final ˈ:Lˏ/ˑﹳ;


# instance fields
.field public volatile ⁱˊ:Lʾﹳ/ⁱˊ;

.field public ﹳٴ:Lʾﹳ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˊˋ/ⁱˊ;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lˊˋ/ⁱˊ;-><init>(I)V

    sput-object v0, Lˏ/ˉʿ;->ʽ:Lˊˋ/ⁱˊ;

    new-instance v0, Lˏ/ˑﹳ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˏ/ˑﹳ;-><init>(I)V

    sput-object v0, Lˏ/ˉʿ;->ˈ:Lˏ/ˑﹳ;

    return-void
.end method

.method public constructor <init>(Lˊˋ/ⁱˊ;Lʾﹳ/ⁱˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˏ/ˉʿ;->ﹳٴ:Lʾﹳ/ﹳٴ;

    iput-object p2, p0, Lˏ/ˉʿ;->ⁱˊ:Lʾﹳ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lˏ/ˉʿ;->ⁱˊ:Lʾﹳ/ⁱˊ;

    invoke-interface {v0}, Lʾﹳ/ⁱˊ;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ(Lʾﹳ/ﹳٴ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˏ/ˉʿ;->ⁱˊ:Lʾﹳ/ⁱˊ;

    sget-object v1, Lˏ/ˉʿ;->ˈ:Lˏ/ˑﹳ;

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Lʾﹳ/ﹳٴ;->ˆʾ(Lʾﹳ/ⁱˊ;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lˏ/ˉʿ;->ⁱˊ:Lʾﹳ/ⁱˊ;

    if-eq v0, v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lˏ/ˉʿ;->ﹳٴ:Lʾﹳ/ﹳٴ;

    new-instance v2, Lʻʿ/ʽ;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3, p1}, Lʻʿ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object v2, p0, Lˏ/ˉʿ;->ﹳٴ:Lʾﹳ/ﹳٴ;

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Lʾﹳ/ﹳٴ;->ˆʾ(Lʾﹳ/ⁱˊ;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
