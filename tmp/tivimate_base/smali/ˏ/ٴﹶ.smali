.class public final Lˏ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʾﹳ/ⁱˊ;


# static fields
.field public static final ʽ:Ljava/lang/Object;


# instance fields
.field public volatile ⁱˊ:Lʾﹳ/ⁱˊ;

.field public volatile ﹳٴ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˏ/ٴﹶ;->ʽ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lʾﹳ/ⁱˊ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lˏ/ٴﹶ;->ʽ:Ljava/lang/Object;

    iput-object v0, p0, Lˏ/ٴﹶ;->ﹳٴ:Ljava/lang/Object;

    iput-object p1, p0, Lˏ/ٴﹶ;->ⁱˊ:Lʾﹳ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lˏ/ٴﹶ;->ﹳٴ:Ljava/lang/Object;

    sget-object v1, Lˏ/ٴﹶ;->ʽ:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lˏ/ٴﹶ;->ﹳٴ:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lˏ/ٴﹶ;->ⁱˊ:Lʾﹳ/ⁱˊ;

    invoke-interface {v0}, Lʾﹳ/ⁱˊ;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lˏ/ٴﹶ;->ﹳٴ:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lˏ/ٴﹶ;->ⁱˊ:Lʾﹳ/ⁱˊ;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method
