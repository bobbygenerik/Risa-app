.class public final Lـʽ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public ʽʽ:Lـʽ/ʽ;

.field public final ʾˋ:Ljava/util/ArrayList;

.field public ˈٴ:Lـʽ/ᵔᵢ;

.field public ˉٴ:Ljava/io/File;

.field public ˊʻ:Z

.field public ٴᵢ:J

.field public ᴵˊ:Lʼﹳ/ᵎﹶ;

.field public ᴵᵔ:Lـʽ/ʼˎ;

.field public ᵎⁱ:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lـʽ/ٴﹶ;->ʾˋ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lʼﹳ/ᵎﹶ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lʼﹳ/ᵎﹶ;-><init>(I)V

    iput-object v0, p0, Lـʽ/ٴﹶ;->ᴵˊ:Lʼﹳ/ᵎﹶ;

    new-instance v0, Lـʽ/ʽ;

    invoke-direct {v0}, Lـʽ/ʽ;-><init>()V

    iput-object v0, p0, Lـʽ/ٴﹶ;->ʽʽ:Lـʽ/ʽ;

    new-instance v0, Lـʽ/ᵔᵢ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lʻᴵ/ﾞᴵ;-><init>(I)V

    iput-object v0, p0, Lـʽ/ٴﹶ;->ˈٴ:Lـʽ/ᵔᵢ;

    new-instance v0, Lـʽ/ʼˎ;

    invoke-direct {v0}, Lـʽ/ʼˎ;-><init>()V

    iput-object v0, p0, Lـʽ/ٴﹶ;->ᴵᵔ:Lـʽ/ʼˎ;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lـʽ/ٴﹶ;->ᵎⁱ:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lـʽ/ٴﹶ;->ٴᵢ:J

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
