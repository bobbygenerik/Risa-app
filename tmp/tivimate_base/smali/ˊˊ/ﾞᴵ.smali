.class public final Lˊˊ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:I

.field public final ˈ:Z

.field public final ⁱˊ:Lˊˊ/ˑﹳ;

.field public final ﹳٴ:Lˊˊ/ˑﹳ;


# direct methods
.method public constructor <init>(Lˊˊ/ˑﹳ;Lˊˊ/ˑﹳ;I)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊˊ/ﾞᴵ;->ﹳٴ:Lˊˊ/ˑﹳ;

    iput-object p2, p0, Lˊˊ/ﾞᴵ;->ⁱˊ:Lˊˊ/ˑﹳ;

    iput p3, p0, Lˊˊ/ﾞᴵ;->ʽ:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lˊˊ/ﾞᴵ;->ˈ:Z

    return-void
.end method
