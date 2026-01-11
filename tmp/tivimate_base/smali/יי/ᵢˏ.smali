.class public final Lיי/ᵢˏ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lʻᴵ/ʻٴ;

.field public ˈ:Z

.field public ˑﹳ:Z

.field public ᵎﹶ:J

.field public final ⁱˊ:Lᐧˎ/ـˆ;

.field public final ﹳٴ:Lיי/ʼˎ;

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>(Lיי/ʼˎ;Lᐧˎ/ـˆ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיי/ᵢˏ;->ﹳٴ:Lיי/ʼˎ;

    iput-object p2, p0, Lיי/ᵢˏ;->ⁱˊ:Lᐧˎ/ـˆ;

    new-instance p1, Lʻᴵ/ʻٴ;

    const/16 p2, 0x40

    new-array v0, p2, [B

    invoke-direct {p1, p2, v0}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    iput-object p1, p0, Lיי/ᵢˏ;->ʽ:Lʻᴵ/ʻٴ;

    return-void
.end method
