.class public final Lʾˏ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public ʽ:Z

.field public ˈ:I

.field public ˑﹳ:I

.field public ᵎﹶ:I

.field public ᵔᵢ:I

.field public final ⁱˊ:[I

.field public final ﹳٴ:Lᐧˎ/ﹳᐧ;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lᐧˎ/ﹳᐧ;

    invoke-direct {v0}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object v0, p0, Lʾˏ/ﹳٴ;->ﹳٴ:Lᐧˎ/ﹳᐧ;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lʾˏ/ﹳٴ;->ⁱˊ:[I

    return-void
.end method
