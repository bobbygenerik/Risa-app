.class public final Lˆﹶ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lˑᵎ/ʾᵎ;

.field public final ⁱˊ:Lᵔʼ/ﹳٴ;

.field public final ﹳٴ:Lᐧᵎ/ᵢי;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WMFgUpdater"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Lᵔʼ/ﹳٴ;Lᐧᵎ/ᵢי;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lˆﹶ/ᵔﹳ;->ⁱˊ:Lᵔʼ/ﹳٴ;

    iput-object p3, p0, Lˆﹶ/ᵔﹳ;->ﹳٴ:Lᐧᵎ/ᵢי;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object p1

    iput-object p1, p0, Lˆﹶ/ᵔﹳ;->ʽ:Lˑᵎ/ʾᵎ;

    return-void
.end method
