.class public final Lٴʻ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lٴʻ/ʽ;

.field public static final ˈ:Lٴʻ/ʽ;

.field public static final ˑﹳ:Lٴʻ/ʽ;


# instance fields
.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lٴʻ/ʽ;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lٴʻ/ʽ;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lٴʻ/ʽ;->ʽ:Lٴʻ/ʽ;

    new-instance v0, Lٴʻ/ʽ;

    const-string v1, "DISABLED"

    invoke-direct {v0, v2, v1}, Lٴʻ/ʽ;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lٴʻ/ʽ;->ˈ:Lٴʻ/ʽ;

    new-instance v0, Lٴʻ/ʽ;

    const-string v1, "DESTROYED"

    invoke-direct {v0, v2, v1}, Lٴʻ/ʽ;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lٴʻ/ʽ;->ˑﹳ:Lٴʻ/ʽ;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lٴʻ/ʽ;->ﹳٴ:I

    iput-object p2, p0, Lٴʻ/ʽ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lٴʻ/ʽ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lٴʻ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized ﹳٴ()Lcom/parse/ٴʼ;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lٴʻ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lᴵﹳ/ᐧᴵ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ʻᵎ;

    invoke-static {v0}, Lcom/parse/ٴʼ;->ˆﾞ(Lᴵﹳ/ʻᵎ;)Lcom/parse/ٴʼ;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
