.class public abstract Lʽʿ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʼˎ:Lʻᴵ/ﹳٴ;

.field public static final ʼᐧ:Lʻᴵ/ﹳٴ;

.field public static final ʽ:I

.field public static final ˆʾ:Lʻᴵ/ﹳٴ;

.field public static final ˈ:Lʻᴵ/ﹳٴ;

.field public static final ˉʿ:Lʻᴵ/ﹳٴ;

.field public static final ˉˆ:Lʻᴵ/ﹳٴ;

.field public static final ˑﹳ:Lʻᴵ/ﹳٴ;

.field public static final יـ:Lʻᴵ/ﹳٴ;

.field public static final ٴﹶ:Lʻᴵ/ﹳٴ;

.field public static final ᵎﹶ:Lʻᴵ/ﹳٴ;

.field public static final ᵔʾ:Lʻᴵ/ﹳٴ;

.field public static final ᵔᵢ:Lʻᴵ/ﹳٴ;

.field public static final ᵔﹳ:Lʻᴵ/ﹳٴ;

.field public static final ⁱˊ:I

.field public static final ﹳٴ:Lʽʿ/ˉˆ;

.field public static final ﹳᐧ:Lʻᴵ/ﹳٴ;

.field public static final ﾞʻ:Lʻᴵ/ﹳٴ;

.field public static final ﾞᴵ:Lʻᴵ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lʽʿ/ˉˆ;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lʽʿ/ˉˆ;-><init>(JLʽʿ/ˉˆ;Lʽʿ/ﾞᴵ;I)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ﹳٴ:Lʽʿ/ˉˆ;

    const/16 v0, 0x20

    const/16 v1, 0xc

    const-string v2, "kotlinx.coroutines.bufferedChannel.segmentSize"

    invoke-static {v0, v1, v2}, Lˊʽ/ⁱˊ;->ﾞʻ(IILjava/lang/String;)I

    move-result v0

    sput v0, Lʽʿ/ᵔᵢ;->ⁱˊ:I

    const-string v0, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v2, 0x2710

    invoke-static {v2, v1, v0}, Lˊʽ/ⁱˊ;->ﾞʻ(IILjava/lang/String;)I

    move-result v0

    sput v0, Lʽʿ/ᵔᵢ;->ʽ:I

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "BUFFERED"

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ˈ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ˑﹳ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ﾞᴵ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ᵎﹶ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "POISONED"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ᵔᵢ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ʼˎ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ˆʾ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ٴﹶ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ﾞʻ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ˉʿ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ᵔʾ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "FAILED"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ˉˆ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ʼᐧ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ᵔﹳ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->ﹳᐧ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lʽʿ/ᵔᵢ;->יـ:Lʻᴵ/ﹳٴ;

    return-void
.end method

.method public static final ﹳٴ(Lᴵי/ˆʾ;Ljava/lang/Object;Lᴵⁱ/ᵔﹳ;)Z
    .locals 0

    .prologue
    invoke-interface {p0, p1, p2}, Lᴵי/ˆʾ;->ﾞʻ(Ljava/lang/Object;Lᴵⁱ/ᵔﹳ;)Lʻᴵ/ﹳٴ;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lᴵי/ˆʾ;->ᵔʾ(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
