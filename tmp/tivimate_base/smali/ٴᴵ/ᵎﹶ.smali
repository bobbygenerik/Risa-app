.class public final Lٴᴵ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ˈ:Ljava/lang/String;

.field public final ⁱˊ:[J

.field public final ﹳٴ:[Lʻʼ/ﹳٴ;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[J[Lʻʼ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴᴵ/ᵎﹶ;->ʽ:Ljava/lang/String;

    iput-object p2, p0, Lٴᴵ/ᵎﹶ;->ˈ:Ljava/lang/String;

    iput-object p3, p0, Lٴᴵ/ᵎﹶ;->ⁱˊ:[J

    iput-object p4, p0, Lٴᴵ/ᵎﹶ;->ﹳٴ:[Lʻʼ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lٴᴵ/ᵎﹶ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lٴᴵ/ᵎﹶ;->ˈ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
