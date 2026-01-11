.class public final Lˎـ/ˈ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Lᐧˎ/ﹳᐧ;

.field public ˈٴ:I

.field public ˊʻ:Z

.field public ٴᵢ:I

.field public final ᴵˊ:Lᐧˎ/ﹳᐧ;

.field public ᴵᵔ:Z


# direct methods
.method public constructor <init>(Lˊﾞ/ٴᵢ;)V
    .locals 1

    invoke-direct {p0, p1}, Lʽⁱ/ᵎﹶ;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lᐧˎ/ﹳᐧ;

    sget-object v0, Lʻᴵ/ﹳᐧ;->ﹳٴ:[B

    invoke-direct {p1, v0}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    iput-object p1, p0, Lˎـ/ˈ;->ᴵˊ:Lᐧˎ/ﹳᐧ;

    new-instance p1, Lᐧˎ/ﹳᐧ;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lˎـ/ˈ;->ʽʽ:Lᐧˎ/ﹳᐧ;

    return-void
.end method
