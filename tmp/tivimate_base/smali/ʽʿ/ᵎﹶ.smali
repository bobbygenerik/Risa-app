.class public final synthetic Lʽʿ/ᵎﹶ;
.super Lˊʼ/ʼˎ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# static fields
.field public static final ᵎⁱ:Lʽʿ/ᵎﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lʽʿ/ᵎﹶ;

    const-string v4, "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, Lʽʿ/ᵔᵢ;

    const-string v3, "createSegment"

    invoke-direct/range {v0 .. v5}, Lˊʼ/ʼˎ;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lʽʿ/ᵎﹶ;->ᵎⁱ:Lʽʿ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    move-object v3, p2

    check-cast v3, Lʽʿ/ˉˆ;

    sget-object p1, Lʽʿ/ᵔᵢ;->ﹳٴ:Lʽʿ/ˉˆ;

    new-instance v0, Lʽʿ/ˉˆ;

    iget-object v4, v3, Lʽʿ/ˉˆ;->ˑﹳ:Lʽʿ/ﾞᴵ;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lʽʿ/ˉˆ;-><init>(JLʽʿ/ˉˆ;Lʽʿ/ﾞᴵ;I)V

    return-object v0
.end method
