.class public final synthetic Lﹶי/ˑﹳ;
.super Lˊʼ/ʼˎ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# static fields
.field public static final ᵎⁱ:Lﹶי/ˑﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lﹶי/ˑﹳ;

    const-string v4, "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, Lﹶי/ʼˎ;

    const-string v3, "createSegment"

    invoke-direct/range {v0 .. v5}, Lˊʼ/ʼˎ;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lﹶי/ˑﹳ;->ᵎⁱ:Lﹶי/ˑﹳ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lﹶי/ˆʾ;

    sget p1, Lﹶי/ʼˎ;->ﹳٴ:I

    new-instance p1, Lﹶי/ˆʾ;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, p2, v2}, Lﹶי/ˆʾ;-><init>(JLﹶי/ˆʾ;I)V

    return-object p1
.end method
