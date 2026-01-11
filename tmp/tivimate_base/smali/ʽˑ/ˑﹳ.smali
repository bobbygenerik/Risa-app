.class public final Lʽˑ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Ljava/util/ArrayList;

.field public ʼᐧ:Ljava/lang/String;

.field public ʽ:Landroid/net/Uri;

.field public ˆʾ:Z

.field public ˈ:Landroid/net/Uri;

.field public ˉʿ:Ljava/util/ArrayList;

.field public ˉˆ:Ljava/lang/Boolean;

.field public ˑﹳ:J

.field public ٴﹶ:J

.field public ᵎﹶ:J

.field public ᵔʾ:Ljava/util/ArrayList;

.field public ᵔᵢ:J

.field public ᵔﹳ:Ljava/lang/String;

.field public final ⁱˊ:Ljava/util/HashMap;

.field public final ﹳٴ:Ljava/lang/String;

.field public ﾞʻ:J

.field public ﾞᴵ:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽˑ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lʽˑ/ˑﹳ;->ⁱˊ:Ljava/util/HashMap;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lʽˑ/ˑﹳ;->ˑﹳ:J

    iput-wide v0, p0, Lʽˑ/ˑﹳ;->ﾞᴵ:J

    iput-wide v0, p0, Lʽˑ/ˑﹳ;->ᵎﹶ:J

    iput-wide v0, p0, Lʽˑ/ˑﹳ;->ᵔᵢ:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lʽˑ/ˑﹳ;->ʼˎ:Ljava/util/ArrayList;

    iput-wide v0, p0, Lʽˑ/ˑﹳ;->ٴﹶ:J

    iput-wide v0, p0, Lʽˑ/ˑﹳ;->ﾞʻ:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lʽˑ/ˑﹳ;->ˉʿ:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lʽˑ/ˑﹳ;->ᵔʾ:Ljava/util/ArrayList;

    return-void
.end method
