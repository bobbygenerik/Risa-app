.class public final Lٴˏ/ʽ;
.super Ljavax/el/VariableMapper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lٴˏ/ˑﹳ;)V
    .locals 2

    invoke-direct {p0}, Ljavax/el/VariableMapper;-><init>()V

    sget-object v0, Lٴˏ/ﹳٴ;->ﹳٴ:Ljavax/el/ExpressionFactory;

    iget-object p1, p1, Lٴˏ/ˑﹳ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljavax/el/ExpressionFactory;->createValueExpression(Ljava/lang/Object;Ljava/lang/Class;)Ljavax/el/ValueExpression;

    return-void
.end method
