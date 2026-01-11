.class public final Lˈـ/ˊʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Ljava/lang/String;

.field public ʽ:I

.field public ˆʾ:Ljava/lang/String;

.field public ˈ:Ljava/lang/String;

.field public ˑﹳ:Ljava/lang/String;

.field public ٴﹶ:Ljava/lang/String;

.field public ᵎﹶ:Landroid/net/Uri;

.field public ᵔᵢ:Ljava/lang/String;

.field public final ⁱˊ:Lʼʻ/ˊʻ;

.field public final ﹳٴ:Ljava/util/HashMap;

.field public ﾞʻ:Ljava/lang/String;

.field public ﾞᴵ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lˈـ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    new-instance v0, Lʼʻ/ˊʻ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lʼʻ/ʽʽ;-><init>(I)V

    iput-object v0, p0, Lˈـ/ˊʻ;->ⁱˊ:Lʼʻ/ˊʻ;

    const/4 v0, -0x1

    iput v0, p0, Lˈـ/ˊʻ;->ʽ:I

    return-void
.end method
